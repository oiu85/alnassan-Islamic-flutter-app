import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Centralized Screen Utility Library
/// This file provides a single point of access for all screen utilities
/// and font size calculations across the entire application
class ScreenUtilRes {
  // Font size multiplier - change this value to adjust all app fonts globally
  static const double _fontSizeMultiplier = 1.0;
  
  // Screen utility instance
  static ScreenUtil get _screenUtil => ScreenUtil();
  
  /// Get responsive width
  static double width(double size) => _screenUtil.setWidth(size);
  
  /// Get responsive height
  static double height(double size) => _screenUtil.setHeight(size);
  
  /// Get responsive radius
  static double radius(double size) => _screenUtil.radius(size);
  
  /// Get responsive font size with global multiplier
  /// This is the centralized font size calculation for the entire app
  static double fontSize(double size) => _screenUtil.setSp(size) * _fontSizeMultiplier;
  
  /// Get responsive padding/margin
  static double padding(double size) => _screenUtil.setWidth(size);
  
  /// Get responsive spacing
  static double spacing(double size) => _screenUtil.setHeight(size);
  
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
