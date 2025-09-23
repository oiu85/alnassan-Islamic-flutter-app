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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Theme Section
            _buildSectionCard(
              context,
              state,
              title: 'المظهر',
              icon: Icons.palette,
              children: [
                _buildThemeToggle(context, state),
                SizedBox(height: 16.h),
                _buildLanguageSelector(context, state),
              ],
            ),
            
            SizedBox(height: 20.h),
            
            // Font Size Section
            _buildSectionCard(
              context,
              state,
              title: 'حجم الخط',
              icon: Icons.text_fields,
              children: [
                _buildFontSizeSlider(context, state),
                SizedBox(height: 16.h),
                _buildFontSizePreview(context, state),
              ],
            ),
            
            
            SizedBox(height: 20.h),
            
            
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
        },
      ),
    );
  }

  Widget _buildSectionCard(
    BuildContext context,
    SettingsState state, {
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: state.isDarkMode ? Colors.grey[800] : Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: AppColors.primary,
                size: 24.f,
              ),
              SizedBox(width: 12.w),
              Text(
                title,
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 18.f,
                  fontWeight: FontWeight.bold,
                  color: state.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          ...children,
        ],
      ),
    );
  }

  Widget _buildThemeToggle(BuildContext context, SettingsState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'الوضع المظلم',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 16.f,
            color: state.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        Switch(
          value: state.isDarkMode,
          onChanged: (value) {
            context.read<SettingsBloc>().add(UpdateDarkModeEvent(value));
          },
          activeColor: AppColors.primary,
        ),
      ],
    );
  }

  Widget _buildLanguageSelector(BuildContext context, SettingsState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'اللغة',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 16.f,
            color: state.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        SizedBox(height: 8.h),
        DropdownButton<String>(
          value: state.selectedLanguage,
          isExpanded: true,
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 14.f,
            color: state.isDarkMode ? Colors.white : Colors.black,
          ),
          items: [
            DropdownMenuItem(value: 'ar', child: Text('العربية')),
            DropdownMenuItem(value: 'en', child: Text('English')),
          ],
          onChanged: (value) {
            context.read<SettingsBloc>().add(UpdateLanguageEvent(value!));
          },
        ),
      ],
    );
  }

  Widget _buildFontSizeSlider(BuildContext context, SettingsState state) {
    // Get screen type and set appropriate min/max values
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth >= 600;
    final isDesktop = screenWidth >= 1200;
    
    // Dynamic font size limits based on screen type
    final minFontSize = isDesktop ? 0.8 : (isTablet ? 0.8 : 0.8);
    final maxFontSize = isDesktop ? 1.1 : (isTablet ? 1.1 : 1.1);
    final divisions = ((maxFontSize - minFontSize) * 20).round(); // 20 divisions per 0.1
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'حجم الخط',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 16.f,
                color: state.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            Text(
              '${(state.fontSizeMultiplier * 100).round()}%',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Slider(
          value: state.fontSizeMultiplier.clamp(minFontSize, maxFontSize),
          min: minFontSize,
          max: maxFontSize,
          divisions: divisions,
          activeColor: AppColors.primary,
          inactiveColor: AppColors.grey.withValues(alpha: 0.3),
          onChanged: state.isSaving ? null : (value) {
            context.read<SettingsBloc>().add(UpdateFontSizeEvent(value));
          },
        ),
        // Show current screen type info
        Text(
          'نوع الشاشة: ${isDesktop ? 'سطح المكتب' : (isTablet ? 'تابلت' : 'هاتف')} - الحد الأدنى: ${(minFontSize * 100).round()}% - الحد الأقصى: ${(maxFontSize * 100).round()}%',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 12.f,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildFontSizePreview(BuildContext context, SettingsState state) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'معاينة الخط:',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              color: state.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'هذا نص تجريبي لمعاينة حجم الخط',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: (16 * state.fontSizeMultiplier).f,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }



}

