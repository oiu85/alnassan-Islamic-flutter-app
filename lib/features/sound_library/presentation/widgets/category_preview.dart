import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/sound_library_bloc.dart';
import '../../data/model.dart';
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
        const SizedBox(height: 8),
        SizedBox(height: 8.h),

        if (category.directSounds.isNotEmpty) ...[
          const SizedBox(height: 16),
          SizedBox(height: 16.h),
        ],

        if (category.level2Children.isNotEmpty)
          ...category.level2Children.take(2).map(
            (level2Category) => SubcategorySection(
              subcategory: level2Category,
              bloc: context.read<SoundLibraryBloc>(),
            ),
          ),
        const SizedBox(height: 20),
        SizedBox(height: 20.h),
      ],
    );
  }


}
