import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
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
                  fontSize: 18.f,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black.withOpacity(0.8),
                ),
              ),
              const Spacer(),
              if (bloc.shouldShowAllButtonForSubcategory(subcategory))
                InkWell(
                  onTap: () => _navigateToSubcategory(context, subcategory),
                  child: Text(
                    "الكل",
                    style: TextStyle(
                      fontSize: 12.f,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: bloc.getPreviewSounds(subcategory)
                .take(3)
                .map((sound) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SoundCard(sound: sound),
                ))
                .toList(),
          ),
        ),
        SizedBox(height: 16.h),
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
