import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';
import '../../data/model/book_model.dart';

/// Widget for displaying individual book information
class BookCardWidget extends StatelessWidget {
  final BookData book;
  final VoidCallback? onDownload;
  final VoidCallback? onRead;
  final VoidCallback? onTap;

  const BookCardWidget({
    super.key,
    required this.book,
    this.onDownload,
    this.onRead,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Book Image
              _buildBookImage(),
              SizedBox(width: 12.w),
              
              // Book Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Book Title
                    _buildBookTitle(),
                    SizedBox(height: 8.h),
                    
                    // Book Category
                    if (book.category != null) _buildBookCategory(),
                    SizedBox(height: 8.h),
                    
                    // Book Info Row (Date & Views)
                    _buildBookInfoRow(),
                    SizedBox(height: 12.h),
                    
                    // Action Buttons
                    _buildActionButtons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the book image widget
  Widget _buildBookImage() {
    return Container(
      width: 80.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.primary.withValues(alpha: 0.1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: book.hasImage && book.fullImageUrl != null
            ? CachedNetworkImage(
                imageUrl: book.fullImageUrl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => _buildImagePlaceholder(),
                errorWidget: (context, url, error) => _buildImagePlaceholder(),
              )
            : _buildImagePlaceholder(),
      ),
    );
  }

  /// Builds image placeholder when no image is available
  Widget _buildImagePlaceholder() {
    return Container(
      color: AppColors.primary.withValues(alpha: 0.1),
      child: Icon(
        Icons.book,
        size: 40.sp,
        color: AppColors.primary,
      ),
    );
  }

  /// Builds the book title widget
  Widget _buildBookTitle() {
    return Text(
      book.bookTitle,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.3,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  /// Builds the book category widget
  Widget _buildBookCategory() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 4.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        book.category!.catTitle,
        style: TextStyle(
          fontFamily: FontFamily.tajawal,
          fontSize: 12.sp,
          color: AppColors.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// Builds the book info row (date and views)
  Widget _buildBookInfoRow() {
    return Row(
      children: [
        // Date
        Row(
          children: [
            Icon(
              Icons.calendar_month_outlined,
              color: AppColors.primary,
              size: 16.sp,
            ),
            SizedBox(width: 4.w),
            Text(
              book.formattedDate,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        SizedBox(width: 16.w),
        
        // Views
        Row(
          children: [
            Icon(
              Icons.remove_red_eye,
              color: AppColors.primary,
              size: 16.sp,
            ),
            SizedBox(width: 4.w),
            Text(
              book.visitorCount.toString(),
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Builds the action buttons
  Widget _buildActionButtons() {
    return Row(
      children: [
        // Download Button
        if (book.hasFile) _buildActionButton(
          text: 'تحميل الكتاب',
          onTap: onDownload,
          icon: Icons.download,
        ),
        
        if (book.hasFile) SizedBox(width: 8.w),
        
        // Read Button
        _buildActionButton(
          text: 'قراءة الكتاب',
          onTap: onRead,
          icon: Icons.menu_book,
        ),
      ],
    );
  }

  /// Builds individual action button
  Widget _buildActionButton({
    required String text,
    required VoidCallback? onTap,
    required IconData icon,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.r),
        child: Container(
          height: 36.h,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 16.sp,
              ),
              SizedBox(width: 4.w),
              Flexible(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
