import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
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
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: parentCategories.length,
        itemBuilder: (context, index) {
          final category = parentCategories[index];
          final isSelected = selectedCategory?.catId == category.catId;

          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? 0 : 8.w),
            child: GestureDetector(
              onTap: () => onCategorySelected(category),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : AppColors.grey,
                  borderRadius: BorderRadius.circular(30.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.1),
                      offset: Offset(0.1.w, 0.1.h)
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    category.catTitle,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 11.f,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
