import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSearch;

  const SearchBarWidget({
    super.key,
    required this.hintText,
    this.onChanged,
    this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: (_) => onSearch?.call(),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 14.f,
            color: Colors.grey[600],
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.primary,
            size: 20,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 8.h,
          ),
        ),
        style: TextStyle(
          fontFamily: FontFamily.tajawal,
          fontSize: 14.f,
        ),
      ),
    );
  }
}
