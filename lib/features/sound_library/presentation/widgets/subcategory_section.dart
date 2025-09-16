import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/sound_library_bloc.dart';
import 'sound_card.dart';
import '../pages/subcategory_sounds_page.dart';

/// Widget for displaying a subcategory section with sounds preview
class SubcategorySection extends StatelessWidget {
  final dynamic subcategory;
  final SoundLibraryBloc bloc;

  const SubcategorySection({
    super.key,
    required this.subcategory,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Row(
            children: [
              Text(
                bloc.getSubcategoryTitle(subcategory),
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black.withValues(alpha: 0.8),
                ),
              ),
              Spacer(),
              if (subcategory.directSounds.length > 3)
                InkWell(
                  onTap: () => _navigateToSubcategory(context, subcategory),
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
          ),
        ),
        const SizedBox(height: 4),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: bloc.getPreviewSounds(subcategory)
                .map((sound) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SoundCard(sound: sound),
                ))
                .toList(),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  /// Navigates to subcategory page
  void _navigateToSubcategory(BuildContext context, dynamic subcategory) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: bloc,
          child: SubcategorySoundsPage(
            subcategory: subcategory,
            title: bloc.getSubcategoryTitle(subcategory),
          ),
        ),
      ),
    );
  }

}
