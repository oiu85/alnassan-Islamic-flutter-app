import 'dart:io';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
  
  @override
  void initState() {
    super.initState();
    // Set loading to false after a short delay if it's still true
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted && _isLoading) {
        setState(() {
          _isLoading = false;
        });
      }
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
      );
    }

    // Loading indicator
    if (_isLoading) {
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
            if (mounted) {
              setState(() {
                _isLoading = false;
              });
            }
          },
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            if (mounted) {
              setState(() {
                _isLoading = false;
                _errorMessage = 'فشل في تحميل الملف: ${details.error}';
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
            if (mounted) {
              setState(() {
                _isLoading = false;
              });
            }
          },
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            if (mounted) {
              setState(() {
                _isLoading = false;
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
      );
    }
  }
}
