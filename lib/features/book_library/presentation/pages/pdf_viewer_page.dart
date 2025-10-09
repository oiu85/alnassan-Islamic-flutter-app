import 'dart:io';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../core/services/storage_permission_service.dart';
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

    // Check storage permission
    final hasPermission = await StoragePermissionService.hasStoragePermission();
    if (!hasPermission) {
      // Request permission
      final granted = await StoragePermissionService.requestStoragePermission(context);
      if (!mounted) return;
      
      if (!granted) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'يرجى منح إذن التخزين للوصول إلى الملف';
          _permissionChecked = true;
        });
        return;
      }
    }

    // Check if file is accessible
    final canAccess = await StoragePermissionService.canAccessFile(widget.localFilePath!);
    if (!canAccess) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _errorMessage = 'لا يمكن الوصول إلى الملف. قد يكون محذوفاً أو لا توجد صلاحية للوصول إليه';
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
                onPressed: () async {
                  // Try to request permission again if it was denied
                  if (_errorMessage!.contains('إذن التخزين')) {
                    final granted = await StoragePermissionService.requestStoragePermission(context);
                    if (granted && mounted) {
                      _checkPermissionsAndFile();
                    }
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  _errorMessage!.contains('إذن التخزين') ? 'إعادة المحاولة' : 'العودة',
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
        return SfPdfViewer.file(
          File(widget.localFilePath!),
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
                _errorMessage = 'فشل في تحميل الملف: ${details.error}\n\nتأكد من وجود الملف ومن صلاحية الوصول إليه';
              });
            }
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
