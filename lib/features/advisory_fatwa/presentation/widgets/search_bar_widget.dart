import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      height: ScreenUtil().setHeight(40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
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
            fontSize: ScreenUtil().setSp(14),
            color: Colors.grey[600],
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.primary,
            size: 20,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(16),
            vertical: ScreenUtil().setHeight(8),
          ),
        ),
        style: TextStyle(
          fontFamily: FontFamily.tajawal,
          fontSize: ScreenUtil().setSp(14),
        ),
      ),
    );
  }
}
