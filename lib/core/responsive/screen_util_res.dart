import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../settings/domain/services/settings_service.dart';

/// Centralized Screen Utility Library
/// This file provides a single point of access for all screen utilities
/// and font size calculations across the entire application
class ScreenUtilRes {
  // Settings service instance
  static final SettingsService _settingsService = SettingsService();
  
  // Font size multiplier - now dynamic from settings
  static double get _fontSizeMultiplier => _settingsService.fontSizeMultiplier;
  
  // UI scale multiplier - fixed at 1.0 (no UI scaling)
  static double get _uiScaleMultiplier => 1.0;
  
  // Initialize settings service
  static Future<void> initialize() async {
    await _settingsService.initialize();
  }
  
  // Screen utility instance
  static ScreenUtil get _screenUtil => ScreenUtil();
  
  /// Get responsive width with UI scale multiplier
  static double width(double size) => _screenUtil.setWidth(size) * _uiScaleMultiplier;
  
  /// Get responsive height with UI scale multiplier
  static double height(double size) => _screenUtil.setHeight(size) * _uiScaleMultiplier;
  
  /// Get responsive radius with UI scale multiplier
  static double radius(double size) => _screenUtil.radius(size) * _uiScaleMultiplier;
  
  /// Get responsive font size with global multiplier
  /// This is the centralized font size calculation for the entire app
  static double fontSize(double size) => _screenUtil.setSp(size) * _fontSizeMultiplier;
  
  /// Get responsive padding/margin with UI scale multiplier
  static double padding(double size) => _screenUtil.setWidth(size) * _uiScaleMultiplier;
  
  /// Get responsive spacing with UI scale multiplier
  static double spacing(double size) => _screenUtil.setHeight(size) * _uiScaleMultiplier;
  
  /// Get screen width
  static double get screenWidth => _screenUtil.screenWidth;
  
  /// Get screen height
  static double get screenHeight => _screenUtil.screenHeight;
  
  /// Get status bar height
  static double get statusBarHeight => _screenUtil.statusBarHeight;
  
  /// Get bottom bar height
  static double get bottomBarHeight => _screenUtil.bottomBarHeight;
  
  /// Get text scale factor
  static double get textScaleFactor => _screenUtil.textScaleFactor;
  
  /// Get pixel ratio
  static double get pixelRatio => _screenUtil.pixelRatio ?? 1.0;
  
  /// Get scale width
  static double get scaleWidth => _screenUtil.scaleWidth;
  
  /// Get scale height
  static double get scaleHeight => _screenUtil.scaleHeight;
  
  /// Get scale text
  static double get scaleText => _screenUtil.scaleText;
  
  /// Check if device is tablet
  static bool get isTablet => _screenUtil.screenWidth >= 600;
  
  /// Check if device is phone
  static bool get isPhone => _screenUtil.screenWidth < 600;
  

}

/// Extension methods for easier access to screen utilities
extension ScreenUtilExtension on num {
  /// Get responsive width
  double get w => ScreenUtilRes.width(toDouble());
  
  /// Get responsive height
  double get h => ScreenUtilRes.height(toDouble());
  
  /// Get responsive radius
  double get r => ScreenUtilRes.radius(toDouble());
  
  /// Get responsive font size
  double get f => ScreenUtilRes.fontSize(toDouble());
  
  /// Get responsive padding/margin
  double get p => ScreenUtilRes.padding(toDouble());
  
  /// Get responsive spacing
  double get s => ScreenUtilRes.spacing(toDouble());
}

/// Extension methods for double values
extension ScreenUtilDoubleExtension on double {
  /// Get responsive width
  double get w => ScreenUtilRes.width(this);
  
  /// Get responsive height
  double get h => ScreenUtilRes.height(this);
  
  /// Get responsive radius
  double get r => ScreenUtilRes.radius(this);
  
  /// Get responsive font size
  double get f => ScreenUtilRes.fontSize(this);
  
  /// Get responsive padding/margin
  double get p => ScreenUtilRes.padding(this);
  
  /// Get responsive spacing
  double get s => ScreenUtilRes.spacing(this);
}
