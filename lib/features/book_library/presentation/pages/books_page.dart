import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../core/services/storage_permission_service.dart';
import '../bloc/books_bloc.dart';
import '../bloc/books_event.dart';
import '../bloc/books_state.dart';
import '../widgets/book_card_widget.dart';
import '../widgets/download_progress_dialog.dart';
import 'pdf_viewer_page.dart';
import '../../data/model/book_model.dart';
import '../../data/services/book_downloader.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  late ScrollController _scrollController;
  late BookDownloadService _downloadService;
  final GlobalKey<DownloadProgressDialogState> downloadDialogKey = GlobalKey<DownloadProgressDialogState>();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    
    // Initialize download service
    _downloadService = BookDownloadService();
    
    // Fetch books when page loads
    context.read<BooksBloc>().add(const FetchBooksEvent());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      // Load more when 80% scrolled
      context.read<BooksBloc>().add(const LoadMoreBooksEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الكتب والمؤلفات',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<BooksBloc>().add(const RefreshBooksEvent());
            },
          ),
        ],
      ),
      body: BlocBuilder<BooksBloc, BooksState>(
        builder: (context, state) {
          final bloc = context.read<BooksBloc>();
          
          // Loading state
          if (bloc.shouldShowLoading()) {
            return _buildLoadingState();
          }

          // Error state
          if (bloc.shouldShowError()) {
            return _buildErrorState(bloc.getErrorMessage());
          }

          // Empty state
          if (bloc.shouldShowEmpty()) {
            return _buildEmptyState();
          }

          // Books list
          if (bloc.shouldShowBooks()) {
            return _buildBooksList(state, bloc);
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  /// Builds loading state widget
  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: AppColors.primary,
          ),
          SizedBox(height: 16.0.h),
          Text(
            'جاري تحميل الكتب...',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16.0.sp,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  /// Builds error state widget
  Widget _buildErrorState(String errorMessage) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64.0.sp,
              color: Colors.red,
            ),
            SizedBox(height: 16.0.h),
            Text(
              'حدث خطأ في تحميل الكتب',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18.0.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 8.0.h),
            Text(
              errorMessage,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.0.sp,
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.0.h),
            ElevatedButton(
              onPressed: () {
                context.read<BooksBloc>().add(const RefreshBooksEvent());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
              ),
              child: Text(
                'إعادة المحاولة',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds empty state widget
  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.books.path,
              width: 120.0.w,
              height: 120.0.h,
            ),
            SizedBox(height: 24.0.h),
            Text(
              'لا توجد كتب متاحة',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18.0.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 8.0.h),
            Text(
              'سيتم إضافة المزيد من الكتب قريباً',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.0.sp,
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Builds books list widget
  Widget _buildBooksList(BooksState state, BooksBloc bloc) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<BooksBloc>().add(const RefreshBooksEvent());
      },
      color: AppColors.primary,
      child: Column(
        children: [
          // Books list
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              itemCount: state.books.length + (bloc.shouldShowLoadMore() ? 1 : 0),
              itemBuilder: (context, index) {
                if (index >= state.books.length) {
                  // Load more indicator
                  return _buildLoadMoreIndicator();
                }
                
                final book = state.books[index];
                return BookCardWidget(
                  book: book,
                  onDownload: () => _onDownloadBook(book),
                  onRead: () => _onReadBook(book),
                  onTap: () => _onBookTap(book),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


  /// Builds load more indicator widget
  Widget _buildLoadMoreIndicator() {
    return BlocBuilder<BooksBloc, BooksState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Center(
            child: state.isLoadingMore
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                      width: 20.0.w,
                      height: 20.0.h,
                        child: CircularProgressIndicator(
                          color: AppColors.primary,
                          strokeWidth: 2,
                        ),
                      ),
                      SizedBox(width: 12.0.w),
                      Text(
                        'جاري تحميل المزيد...',
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 14.0.sp,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  )
                : ElevatedButton(
                    onPressed: () {
                      context.read<BooksBloc>().add(const LoadMoreBooksEvent());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                    ),
                    child: Text(
                      'تحميل المزيد',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }

  /// Handles book download action
  void _onDownloadBook(BookData book) async {
    if (!book.hasFile || book.bookDownloadUrl == null) {
      _showErrorSnackBar('لا يوجد ملف للتحميل');
      return;
    }

    // Check storage permission first
    final hasPermission = await StoragePermissionService.hasStoragePermission();
    if (!hasPermission) {
      // Request storage permission with dialog
      final granted = await StoragePermissionService.requestStoragePermission(context);
      if (!mounted) return;
      if (!granted) {
        _showErrorSnackBar('يرجى منح إذن التخزين للوصول إلى مجلد التحميلات');
        return;
      }
    }

    final fileName = book.bookFile ?? 'book_${book.bookId}.pdf';
    
    // Check if file already exists
    final exists = await _downloadService.fileExists(fileName);
    if (exists) {
      _showSuccessSnackBar('الملف موجود بالفعل');
      return;
    }

    // Show download progress dialog
    _showDownloadDialog(book, fileName);
  }

  /// Handles book read action
  void _onReadBook(BookData book) async {
    if (!book.hasFile || book.bookDownloadUrl == null) {
      _showErrorSnackBar('لا يوجد ملف للقراءة');
      return;
    }

    // Check storage permission first
    final hasPermission = await StoragePermissionService.hasStoragePermission();
    if (!hasPermission) {
      // Request storage permission with dialog
      final granted = await StoragePermissionService.requestStoragePermission(context);
      if (!mounted) return;
      if (!granted) {
        _showErrorSnackBar('يرجى منح إذن التخزين للوصول إلى مجلد التحميلات');
        return;
      }
    }

    // Check if file is downloaded locally
    final fileName = book.bookFile ?? 'book_${book.bookId}.pdf';
    final localPath = await _downloadService.getLocalFilePath(fileName);
    
    if (localPath != null) {
      // Open local file
      _openPdfViewer(book, localPath);
    } else {
      // Download and then open
      _showDownloadDialog(book, fileName, openAfterDownload: true);
    }
  }

  /// Handles book tap action
  void _onBookTap(BookData book) {
    // Show book details or options
    _showBookOptions(book);
  }

  /// Handles book share action
  void _onShareBook(BookData book) {
    // Construct the book URL
    final String bookUrl = 'https://www.naasan.net/book.php?id=${book.bookId}';
    final String subject = book.bookTitle;
    
    // Share the book URL
    Share.share(
      bookUrl,
      subject: subject,
    );
  }

  /// Shows download progress dialog
  void _showDownloadDialog(BookData book, String fileName, {bool openAfterDownload = false}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return DownloadProgressDialog(
          key: downloadDialogKey,
          fileName: fileName,
          onCancel: () {
            Navigator.of(context).pop();
          },
        );
      },
    );

    // Start download
    _downloadService.downloadBook(
      url: book.bookDownloadUrl!,
      fileName: fileName,
      onProgress: (progress) {
        // Update progress in dialog
        downloadDialogKey.currentState?.updateProgress(progress);
      },
    ).then((filePath) {
      Navigator.of(context).pop(); // Close progress dialog
      
      if (filePath != null) {
        _showSuccessSnackBar('تم تحميل الكتاب بنجاح');
        if (openAfterDownload) {
          _openPdfViewer(book, filePath);
        }
      } else {
        _showErrorSnackBar('فشل في تحميل الكتاب. تحقق من اتصال الإنترنت');
      }
    });
  }

  /// Opens PDF viewer with the given file path
  void _openPdfViewer(BookData book, String filePath) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PdfViewerPage(
          book: book,
          localFilePath: filePath,
        ),
      ),
    );
  }

  /// Shows book options dialog
  void _showBookOptions(BookData book) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0.r)),
      ),
      builder: (context) => Container(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Book title
            Text(
              book.bookTitle,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18.0.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0.h),
            
            // Options
            if (book.hasFile) ...[
              ListTile(
                leading: Icon(Icons.download, color: AppColors.primary),
                title: Text(
                  'تحميل الكتاب',
                  style: TextStyle(fontFamily: FontFamily.tajawal),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _onDownloadBook(book);
                },
              ),
              ListTile(
                leading: Icon(Icons.menu_book, color: AppColors.primary),
                title: Text(
                  'قراءة الكتاب',
                  style: TextStyle(fontFamily: FontFamily.tajawal),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _onReadBook(book);
                },
              ),
            ],
            
            ListTile(
              leading: Icon(Icons.share, color: AppColors.primary),
              title: Text(
                'مشاركة الكتاب',
                style: TextStyle(fontFamily: FontFamily.tajawal),
              ),
              onTap: () {
                Navigator.pop(context);
                _onShareBook(book);
              },
            ),
            
            ListTile(
              leading: Icon(Icons.info_outline, color: AppColors.primary),
              title: Text(
                'معلومات الكتاب',
                style: TextStyle(fontFamily: FontFamily.tajawal),
              ),
              onTap: () {
                Navigator.pop(context);
                _showBookInfo(book);
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Shows book information dialog
  void _showBookInfo(BookData book) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'معلومات الكتاب',
          style: TextStyle(fontFamily: FontFamily.tajawal),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoRow('العنوان', book.bookTitle),
            if (book.category != null) _buildInfoRow('التصنيف', book.category!.catTitle),
            _buildInfoRow('تاريخ النشر', book.formattedDate),
            _buildInfoRow('عدد الزوار', book.visitorCount.toString()),
            if (book.bookSummary != null && book.bookSummary!.isNotEmpty) _buildInfoRow('الملخص', book.bookSummary!),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'إغلاق',
              style: TextStyle(fontFamily: FontFamily.tajawal),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds info row widget
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80.0.w,
            child: Text(
              '$label:',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Shows success snackbar
  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontFamily: FontFamily.tajawal),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  /// Shows error snackbar
  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontFamily: FontFamily.tajawal),
        ),
        backgroundColor: Colors.red,
        action: SnackBarAction(
          label: 'الإعدادات',
          textColor: Colors.white,
          onPressed: () {
            // Open app settings for permissions
            // This would typically open the app settings
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'يرجى فتح إعدادات التطبيق ومنح الأذونات المطلوبة',
                  style: TextStyle(fontFamily: FontFamily.tajawal),
                ),
                backgroundColor: Colors.orange,
              ),
            );
          },
        ),
      ),
    );
  }
}
