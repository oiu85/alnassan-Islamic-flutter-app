import 'package:flutter/material.dart';
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
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: parentCategories.length,
        itemBuilder: (context, index) {
          final category = parentCategories[index];
          final isSelected = selectedCategory?.catId == category.catId;
          
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? 0 : 8),
            child: GestureDetector(
              onTap: () => onCategorySelected(category),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : AppColors.grey,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.1), 
                      offset: Offset(0.1, 0.1)
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    category.catTitle,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 11,
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
