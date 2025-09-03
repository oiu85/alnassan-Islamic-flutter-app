import 'package:flutter/material.dart';
import '../../../../core/responsive/device_type.dart';

class ResponsiveTextService {
  //* font size based on device type and base size
  static double calculateFontSize(BuildContext context, double baseSize) {
    return context.deviceValue(
      mobile: baseSize,
      tablet: baseSize * 1.2,
      desktop: baseSize * 1.4,
    );
  }

  //* maximum characters per page based on screen size
  static int calculateCharactersPerPage(BuildContext context) {
    return context.deviceValue(
      mobile: 800,
      tablet: 1200,
      desktop: 1600,
    );
  }

  //* padding for the book page based on screen size
  static EdgeInsets calculatePagePadding(BuildContext context) {
    return context.deviceValue(
      mobile: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      tablet: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      desktop: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
    );
  }

  /// Calculate the book aspect ratio based on screen orientation and device
  static double calculateBookAspectRatio(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    
    if (isLandscape) {
      return context.deviceValue(
        mobile: 4/3,
        tablet: 5/4,
        desktop: 6/5,
      );
    } else {
      return context.deviceValue(
        mobile: 3/4,
        tablet: 4/5,
        desktop: 5/6,
      );
    }
  }
  
  /// Calculate the line height multiplier based on device
  static double calculateLineHeight(BuildContext context) {
    return context.deviceValue(
      mobile: 1.5,
      tablet: 1.6,
      desktop: 1.7,
    );
  }
}
