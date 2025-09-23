import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
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
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(
              context.deviceValue(
                mobile: 18.0,
                tablet: 22.0,
                desktop: 26.0,
              ),
            ),
            fontFamily: FontFamily.tajawal,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        const Spacer(),
        if (actionText != null)
          InkWell(
            onTap: onActionTap,
            child: Text(
              actionText!,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(
                  context.deviceValue(
                    mobile: 14.0,
                    tablet: 16.0,
                    desktop: 18.0,
                  ),
                ),
                fontFamily: FontFamily.tajawal,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ],
    );
  }
}
