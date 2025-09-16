import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_event.dart';
import '../../data/model.dart';
import 'sound_card.dart';
import 'subcategory_section.dart';

/// Widget for displaying a category preview with direct sounds and subcategories
class CategoryPreview extends StatelessWidget {
  final Level1RootCategory category;

  const CategoryPreview({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCategoryTitle(category.catTitle),
        const SizedBox(height: 8),

        if (category.directSounds.isNotEmpty) ...[
          _buildCategoryDirectSounds(context, category),
          const SizedBox(height: 16),
        ],

        if (category.level2Children.isNotEmpty)
          ...category.level2Children.take(2).map(
            (level2Category) => SubcategorySection(
              subcategory: level2Category,
              bloc: context.read<SoundLibraryBloc>(),
            ),
          ),

        const SizedBox(height: 20),
      ],
    );
  }

  /// Builds category title
  Widget _buildCategoryTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: FontFamily.tajawal,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
    );
  }

  /// Builds category direct sounds with "الكل" button
  Widget _buildCategoryDirectSounds(BuildContext context, Level1RootCategory category) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text(
                category.catTitle,
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black.withValues(alpha: 0.8),
                ),
              ),
              if (category.directSounds.length > 3) ...[
                Spacer(),
                GestureDetector(
                  onTap: () {
                    context.read<SoundLibraryBloc>().add(SelectLevel1CategoryEvent(category: category));
                    context.read<SoundLibraryBloc>().add(const ToggleDirectSoundsViewEvent());
                  },
                  child: Text(
                    "الكل",
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 4),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: category.directSounds
                .take(3)
                .map((sound) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SoundCard(sound: sound),
                ))
                .toList(),
          ),
        ),
      ],
    );
  }

}
