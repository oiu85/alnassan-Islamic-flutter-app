import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/utils/responsive.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../data/model.dart';

class SoundTopBar extends StatelessWidget {
  final List<Level1RootCategory> parentCategories;
  final Level1RootCategory? selectedCategory;
  final Function(Level1RootCategory) onCategorySelected;

  const SoundTopBar({
    super.key,
    required this.parentCategories,
    this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    final chipVPad = responsiveLayoutValue(context, mobile: 8.h, tablet: 10.h);
    final chipHPad = responsiveLayoutValue(context, mobile: 16.w, tablet: 20.w);
    final barHeight = responsiveLayoutValue(
      context,
      mobile: 50.h,
      tablet: 56.h,
    );
    final labelSize = responsiveLayoutValue(
      context,
      mobile: 11.sp,
      tablet: 13.sp,
    );

    return SizedBox(
      height: barHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: parentCategories.length,
        separatorBuilder: (context, _) => SizedBox(width: 8.w),
        itemBuilder: (context, index) {
          final category = parentCategories[index];
          final isSelected = selectedCategory?.catId == category.catId;

          return GestureDetector(
            onTap: () => onCategorySelected(category),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: chipHPad,
                vertical: chipVPad,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.grey,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: 0.1),
                    offset: Offset(0.1.w, 0.1.h),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  category.catTitle,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: labelSize,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
