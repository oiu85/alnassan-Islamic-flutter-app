import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/settings_bloc.dart';
import '../bloc/settings_event.dart';
import '../bloc/settings_state.dart';
import '../../domain/services/settings_service.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(settingsService: SettingsService())
        ..add(LoadSettingsEvent()),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          // Show loading indicator if loading
          if (state.isLoading) {
            return Scaffold(
              backgroundColor: state.isDarkMode ? Colors.grey[900] : Colors.grey[50],
              appBar: AppBar(
                title: Text(
                  'إعدادات التطبيق',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 20.f,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                elevation: 0,
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'جاري تحميل الإعدادات...',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 16.f,
                        color: state.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          // Show error message if there's an error
          if (state.errorMessage != null) {
            return Scaffold(
              backgroundColor: state.isDarkMode ? Colors.grey[900] : Colors.grey[50],
              appBar: AppBar(
                title: Text(
                  'إعدادات التطبيق',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 20.f,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                elevation: 0,
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 64.f,
                      color: Colors.red,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'حدث خطأ في تحميل الإعدادات',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 18.f,
                        fontWeight: FontWeight.bold,
                        color: state.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      state.errorMessage!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 14.f,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    ElevatedButton.icon(
                      onPressed: () {
                        context.read<SettingsBloc>().add(LoadSettingsEvent());
                      },
                      icon: Icon(Icons.refresh, size: 20.f),
                      label: Text(
                        'إعادة المحاولة',
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 16.f,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                'الإعدادات',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 20.f,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Font Size Section
                  _buildFontSizeSection(context, state),
                  
                  SizedBox(height: 24.h),
                  
                  Divider(height: 1.h, color: AppColors.grey.withValues(alpha: 0.2)),
                  
                  SizedBox(height: 24.h),
                  
                  // Download Path Section
                  _buildDownloadPathSection(context, state),
                  
                  SizedBox(height: 40.h),
                  
                  // Save Button
                  _buildSaveButton(context, state),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Font Size Section with Toggle
  Widget _buildFontSizeSection(BuildContext context, SettingsState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'حجم الخط',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 18.f,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            _buildFontSizeOption(context, state, 'صغير', 0.8),
            SizedBox(width: 12.w),
            _buildFontSizeOption(context, state, 'عادي', 1.0),
            SizedBox(width: 12.w),
            _buildFontSizeOption(context, state, 'كبير', 1.09),
          ],
        ),
        SizedBox(height: 16.h),
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: AppColors.grey.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            'هذا نص تجريبي لمعاينة حجم الخط',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: (16 * state.fontSizeMultiplier).f,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFontSizeOption(BuildContext context, SettingsState state, String label, double value) {
    final isSelected = (state.fontSizeMultiplier - value).abs() < 0.01;
    
    return Expanded(
      child: GestureDetector(
        onTap: state.isSaving ? null : () {
          context.read<SettingsBloc>().add(UpdateFontSizeEvent(value));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 14.h),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: isSelected ? AppColors.primary : AppColors.grey.withValues(alpha: 0.3),
              width: 2.w,
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 16.f,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Download Path Section - Simplified
  Widget _buildDownloadPathSection(BuildContext context, SettingsState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'مسار التحميل',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 18.f,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: AppColors.grey.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              Icon(
                Icons.folder_outlined,
                color: AppColors.primary,
                size: 24.f,
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  state.downloadPath,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 14.f,
                    color: Colors.black87,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Save Button - Simplified
  Widget _buildSaveButton(BuildContext context, SettingsState state) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: state.isSaving ? null : () {
          context.read<SettingsBloc>().add(SubmitSettingsEvent());
          _showSuccessDialog(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 0,
        ),
        child: state.isSaving
            ? SizedBox(
                width: 20.w,
                height: 20.h,
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                'حفظ الإعدادات',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 18.f,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
  // Success Dialog - Simplified
  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 64.f,
              ),
              SizedBox(height: 16.h),
              Text(
                'تم الحفظ بنجاح',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 20.f,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Text(
                    'موافق',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 16.f,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

