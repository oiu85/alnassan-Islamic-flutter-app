import 'package:flutter/material.dart';
import 'package:nassan_app/core/utils/device_layout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;

  const SectionHeaderWidget({
    super.key,
    required this.title,
    this.actionText,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: context.deviceValue(
              mobile: 18.0.sp,
              tablet: 22.0.sp,
              desktop: 26.0.sp,
            ),
            fontFamily: FontFamily.tajawal,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        if (actionText != null && onActionTap != null)
          InkWell(
            onTap: onActionTap,
            child: Text(
              actionText!,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.black,
              ),
            ),
          ),
      ],
    );
  }
}
