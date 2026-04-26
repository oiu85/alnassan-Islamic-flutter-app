import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
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
    final chipVPad = responsiveLayoutValue(context, mobile: 8.s, tablet: 10.s);
    final chipHPad = responsiveLayoutValue(context, mobile: 16.p, tablet: 20.p);
    final barHeight = responsiveLayoutValue(
      context,
      mobile: 50.s,
      tablet: 56.s,
    );
    final labelSize = responsiveLayoutValue(
      context,
      mobile: 11.f,
      tablet: 13.f,
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
