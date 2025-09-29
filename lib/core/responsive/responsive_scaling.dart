import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A helper class that provides responsive scaling methods
/// This class helps maintain proportional sizing across different screen sizes
class ResponsiveScaling {
  /// Breakpoints for different device sizes
  static const double mobileMaxWidth = 650;
  static const double tabletMaxWidth = 1100;

  /// Scale a value proportionally based on the screen width
  /// This maintains better proportions across different screen sizes
  static double scale(BuildContext context, double value) {
    final width = MediaQuery.of(context).size.width;
    
    if (width <= mobileMaxWidth) {
      return value.sp; // Standard mobile scaling
    } else if (width <= tabletMaxWidth) {
      return (value * 0.85).sp; // Slightly reduced scaling for tablets
    } else {
      return (value * 0.75).sp; // Further reduced scaling for desktop
    }
  }

  /// Get responsive padding that maintains proportions based on screen size
  static EdgeInsets getPadding(BuildContext context, {
    double? top,
    double? right, 
    double? bottom,
    double? left,
    double? horizontal,
    double? vertical,
    double? all,
  }) {
    if (all != null) {
      final scaledValue = scale(context, all);
      return EdgeInsets.all(scaledValue);
    }
    
    // Calculate horizontal values
    final double leftValue = left ?? horizontal ?? 0;
    final double rightValue = right ?? horizontal ?? 0;
    
    // Calculate vertical values
    final double topValue = top ?? vertical ?? 0;
    final double bottomValue = bottom ?? vertical ?? 0;
    
    return EdgeInsets.fromLTRB(
      scale(context, leftValue),
      scale(context, topValue),
      scale(context, rightValue),
      scale(context, bottomValue),
    );
  }

  /// Get a proportionally scaled size for spacing
  static double spacing(BuildContext context, double value) {
    return scale(context, value);
  }

  /// Get a proportionally scaled font size
  static double fontSize(BuildContext context, double value) {
    final width = MediaQuery.of(context).size.width;
    
    if (width <= mobileMaxWidth) {
      return value.sp;
    } else if (width <= tabletMaxWidth) {
      return (value * 0.9).sp; // Slightly smaller font for tablet
    } else {
      return (value * 0.85).sp; // Even smaller font for desktop
    }
  }

  /// Get a responsive width that scales based on screen width
  static double getWidth(BuildContext context, double percentOfScreen) {
    final screenWidth = MediaQuery.of(context).size.width;
    final width = MediaQuery.of(context).size.width;
    double adjustedPercent = percentOfScreen;
    
    if (width <= mobileMaxWidth) {
      adjustedPercent = percentOfScreen;
    } else if (width <= tabletMaxWidth) {
      adjustedPercent = percentOfScreen * 0.8; // Narrower on tablet
    } else {
      adjustedPercent = percentOfScreen * 0.7; // Even narrower on desktop
    }
    
    return screenWidth * adjustedPercent;
  }

  /// Get responsive height based on screen height percentage
  static double getHeight(BuildContext context, double percentOfScreen) {
    final screenHeight = MediaQuery.of(context).size.height;
    return screenHeight * percentOfScreen;
  }
  
  /// Determine if the device is a mobile phone
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= mobileMaxWidth;
  }

  /// Determine if the device is a tablet
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width > mobileMaxWidth && width <= tabletMaxWidth;
  }

  /// Determine if the device is a desktop
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > tabletMaxWidth;
  }
}

/// Extension to provide easier access to responsive scaling methods
extension ResponsiveScalingExtension on BuildContext {
  /// Scale a value proportionally based on screen width
  double rs(double value) => ResponsiveScaling.scale(this, value);
  
  /// Get responsive padding
  EdgeInsets rPadding({
    double? top,
    double? right, 
    double? bottom,
    double? left,
    double? horizontal,
    double? vertical,
    double? all,
  }) => ResponsiveScaling.getPadding(
    this,
    top: top,
    right: right,
    bottom: bottom,
    left: left,
    horizontal: horizontal,
    vertical: vertical,
    all: all,
  );
  
  /// Get responsive spacing
  double rSpacing(double value) => ResponsiveScaling.spacing(this, value);
  
  /// Get responsive font size
  double rFontSize(double value) => ResponsiveScaling.fontSize(this, value);
  
  /// Get responsive width based on percentage of screen width
  double rWidth(double percentOfScreen) => ResponsiveScaling.getWidth(this, percentOfScreen);
  
  /// Get responsive height based on percentage of screen height
  double rHeight(double percentOfScreen) => ResponsiveScaling.getHeight(this, percentOfScreen);
  
  /// Check if the device is a mobile phone
  bool get rIsMobile => ResponsiveScaling.isMobile(this);
  
  /// Check if the device is a tablet
  bool get rIsTablet => ResponsiveScaling.isTablet(this);
  
  /// Check if the device is a desktop
  bool get rIsDesktop => ResponsiveScaling.isDesktop(this);
}