import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// import '../../../../core/services/storage_permission_service.dart'; // REMOVED - No permission needed for Android 11+
import '../../../../gen/fonts.gen.dart';
import '../../data/model/book_model.dart';

/// Page to view PDF files
class PdfViewerPage extends StatefulWidget {
  final BookData book;
  final String? localFilePath;

  const PdfViewerPage({
    super.key,
    required this.book,
    this.localFilePath,
  });

  @override
  State<PdfViewerPage> createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  final PdfViewerController _pdfViewerController = PdfViewerController();
  bool _isLoading = true;
  String? _errorMessage;
  bool _permissionChecked = false;
  
  @override
  void initState() {
    super.initState();
    _checkPermissionsAndFile();
  }

  /// Check permissions and file accessibility before attempting to open
  /// REMOVED: Permission checks for Android 11+ - Files in Downloads folder are accessible without permission
  Future<void> _checkPermissionsAndFile() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    // If we're loading from network, no permission check needed
    if (widget.localFilePath == null) {
      setState(() {
        _isLoading = false;
        _permissionChecked = true;
      });
      return;
    }

    // On Android 11+, files created by the app in Downloads folder are accessible
    // Just verify file exists - no permission check needed
    try {
      final file = File(widget.localFilePath!);
      final exists = await file.exists();
      
      if (!exists) {
        if (!mounted) return;
        setState(() {
          _isLoading = false;
          _errorMessage = 'الملف غير موجود. يرجى إعادة تحميل الكتاب';
          _permissionChecked = true;
        });
        return;
      }
    } catch (e) {
      debugPrint('❌ Error checking file: $e');
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _errorMessage = 'حدث خطأ أثناء الوصول إلى الملف';
        _permissionChecked = true;
      });
      return;
    }

    // All checks passed
    if (!mounted) return;
    setState(() {
      _isLoading = false;
      _permissionChecked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.book.bookTitle,
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.zoom_in),
            onPressed: () {
              _pdfViewerController.zoomLevel = _pdfViewerController.zoomLevel + 0.25;
            },
          ),
          IconButton(
            icon: const Icon(Icons.zoom_out),
            onPressed: () {
              _pdfViewerController.zoomLevel = _pdfViewerController.zoomLevel - 0.25;
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  /// Build the body based on state
  Widget _buildBody() {
    // Show error if any
    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 48,
              ),
              const SizedBox(height: 16),
              Text(
                _errorMessage!,
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Try again if file error, otherwise go back
                  if (_errorMessage!.contains('الملف غير موجود') || _errorMessage!.contains('الوصول إلى الملف')) {
                    _checkPermissionsAndFile();
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  (_errorMessage!.contains('الملف غير موجود') || _errorMessage!.contains('الوصول إلى الملف')) 
                      ? 'إعادة المحاولة' 
                      : 'العودة',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Loading indicator or permission check
    if (_isLoading || !_permissionChecked) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    // Show PDF from local file or URL
    try {
      if (widget.localFilePath != null) {
        // Read file as bytes first, then pass to PDF viewer
        // This works better on Android 11+ without MANAGE_EXTERNAL_STORAGE
        return FutureBuilder<Uint8List>(
          future: File(widget.localFilePath!).readAsBytes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            
            if (snapshot.hasError) {
              debugPrint('❌ Error reading file: ${snapshot.error}');
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, color: Colors.red, size: 48),
                    const SizedBox(height: 16),
                    Text(
                      'حدث خطأ أثناء قراءة الملف: ${snapshot.error}',
                      style: const TextStyle(fontFamily: FontFamily.tajawal),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }
            
            if (!snapshot.hasData) {
              return const Center(child: Text('لا توجد بيانات'));
            }
            
            return SfPdfViewer.memory(
              snapshot.data!,
              controller: _pdfViewerController,
              canShowScrollHead: true,
              enableDoubleTapZooming: true,
              enableTextSelection: true,
              onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                debugPrint('✅ PDF loaded successfully from memory');
              },
              onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
                debugPrint('❌ PDF load failed: ${details.error}');
                if (mounted) {
                  setState(() {
                    _errorMessage = 'فشل في تحميل الملف: ${details.error}\n\nتأكد من وجود الملف ومن صلاحية الوصول إليه';
                  });
                }
              },
            );
          },
        );
      } else if (widget.book.fullFileUrl != null) {
        return SfPdfViewer.network(
          widget.book.fullFileUrl!,
          controller: _pdfViewerController,
          canShowScrollHead: true,
          enableDoubleTapZooming: true,
          enableTextSelection: true,
          onDocumentLoaded: (PdfDocumentLoadedDetails details) {
            // Document loaded successfully
          },
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            if (mounted) {
              setState(() {
                _errorMessage = 'فشل في تحميل الملف: ${details.error}';
              });
            }
          },
        );
      } else {
        return Center(
          child: Text(
            'لا يوجد ملف للعرض',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16,
            ),
          ),
        );
      }
    } catch (e) {
      // Handle any unexpected errors
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 48,
              ),
              const SizedBox(height: 16),
              Text(
                'حدث خطأ غير متوقع: ${e.toString()}',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'العودة',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
