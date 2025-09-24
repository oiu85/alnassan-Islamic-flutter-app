import 'package:flutter/material.dart';
import '../../data/model/advisory_categories_model.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';

class AdvisoryFatwaCardWidget extends StatefulWidget {
  final AdvisoryItem advisory;
  final double? width;
  final VoidCallback? onTap;

  const AdvisoryFatwaCardWidget({
    super.key,
    required this.advisory,
    this.width,
    this.onTap,
  });

  @override
  State<AdvisoryFatwaCardWidget> createState() => _AdvisoryFatwaCardWidgetState();
}

class _AdvisoryFatwaCardWidgetState extends State<AdvisoryFatwaCardWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Make card responsive to available width
        final double cardWidth = widget.width ?? constraints.maxWidth;
        final double effectiveWidth = cardWidth == double.infinity 
            ? constraints.maxWidth 
            : cardWidth.clamp(200.0, constraints.maxWidth); // Minimum width of 200 to prevent NaN
        
        return Container(
          width: effectiveWidth,
          constraints: BoxConstraints(
            minHeight: 200.h,
            maxWidth: effectiveWidth,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 4.w,
            vertical: 8.h,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: effectiveWidth * 0.07, // Responsive padding
            vertical: 20.h,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppColors.secondary.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCategoryBadge(),
              SizedBox(height: 12.h),
              _buildQuestionLabel(),
              SizedBox(height: 8.h),
              Flexible(
                child: _buildQuestionText(),
              ),
              SizedBox(height: 12.h),
              _buildStatsRow(),
              SizedBox(height: 20.h),
              _buildActionButton(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCategoryBadge() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.lightbulb_outline,
            size: 14.f,
            color: AppColors.black,
          ),
          SizedBox(width: 4.w),
          Flexible(
            child: Text(
              widget.advisory.category?.catTitle ?? 'قسم الفتاوى',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.tajawal,
                fontSize: 12.f,
                color: AppColors.black,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionLabel() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 2.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "السؤال: ",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: FontFamily.tajawal,
          fontSize: 12.f,
        ),
      ),
    );
  }

  Widget _buildQuestionText() {
    final String questionText = widget.advisory.advisoryQuestion ?? 
                               widget.advisory.advisoryTitle ?? 
                               'سؤال';
    
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate if text needs expand button based on available width
        final TextPainter textPainter = TextPainter(
          text: TextSpan(
            text: questionText,
            style: TextStyle(
              fontSize: 13.f,
              fontFamily: FontFamily.tajawal,
              height: 1.5,
              color: Colors.grey[800],
            ),
          ),
          maxLines: 3,
          textDirection: TextDirection.rtl,
        )..layout(maxWidth: constraints.maxWidth);
        
        final bool isTextOverflowing = textPainter.didExceedMaxLines;
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              questionText,
              style: TextStyle(
                fontSize: 13.f,
                fontFamily: FontFamily.tajawal,
                height: 1.5,
                color: Colors.grey[800],
              ),
              maxLines: _isExpanded ? 5 : 3,
              overflow: TextOverflow.ellipsis,
            ),
            if (isTextOverflowing) // Only show expand button if text overflows
              TextButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _isExpanded ? 'عرض أقل' : 'المزيد',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontFamily: FontFamily.tajawal,
                        fontSize: 12.f,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 16.f,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildStatsRow() {
    return Row(
      children: [
        _buildFatwaNumber(),
        const Spacer(),
        _buildDateChip(),
        SizedBox(width: 8.w),
        _buildViewsChip(),
      ],
    );
  }

  Widget _buildFatwaNumber() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "رقم الفتوى: ",
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.f,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          Text(
            widget.advisory.advisoryId?.toString() ?? '-',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 12.f,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateChip() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.calendar_month_outlined,
            size: 14.f,
            color: Colors.grey[600],
          ),
          SizedBox(width: 4.w),
          Text(
            _formatDate(widget.advisory.advisoryQuestionDate),
            style: TextStyle(
              fontSize: 11.f,
              fontFamily: FontFamily.tajawal,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildViewsChip() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.remove_red_eye_outlined,
            size: 14.f,
            color: Colors.grey[600],
          ),
          SizedBox(width: 4.w),
          Text(
            widget.advisory.advisoryVisitor?.toString() ?? '0',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 11.f,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton() {
    return InkWell(
      onTap: () {
        if (widget.advisory.advisoryId != null && widget.onTap != null) {
          widget.onTap!();
        }
      },
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primary,
              AppColors.primary.withOpacity(0.8),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "عرض الإجابة",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.f,
              ),
            ),
            SizedBox(width: 8.w),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 16.f,
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) {
      return '-';
    }
    
    try {
      final date = DateTime.parse(dateString);
      return '${date.year}/${date.month}/${date.day}';
    } catch (e) {
      return dateString;
    }
  }
}