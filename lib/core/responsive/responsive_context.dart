import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/responsive_scaling.dart';

/// A class that encapsulates responsive context information.
/// This provides a single source of truth for responsive values throughout the app.
class ResponsiveContext {
  final BuildContext context;
  final bool isTablet;
  final bool isDesktop;
  final bool isMobile;
  final Size screenSize;
  final double screenWidth;
  final double screenHeight;
  final bool isSmallMobile;

  ResponsiveContext._({
    required this.context,
    required this.isTablet,
    required this.isDesktop,
    required this.isMobile,
    required this.screenSize,
    required this.screenWidth,
    required this.screenHeight,
    required this.isSmallMobile,
  });

  /// Creates a ResponsiveContext instance from a BuildContext.
  factory ResponsiveContext.of(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTablet = ResponsiveScaling.isTablet(context);
    final isDesktop = ResponsiveScaling.isDesktop(context);
    
    return ResponsiveContext._(
      context: context,
      isTablet: isTablet,
      isDesktop: isDesktop,
      isMobile: !isTablet && !isDesktop,
      screenSize: size,
      screenWidth: size.width,
      screenHeight: size.height,
      isSmallMobile: size.width < 360,
    );
  }

  /// Returns a responsive value based on the device type.
  /// [desktop] is the value for desktop devices.
  /// [tablet] is the value for tablet devices.
  /// [mobile] is the value for mobile devices.
  /// [smallMobile] is an optional value for small mobile devices (width < 360).
  T value<T>({
    required T desktop,
    required T tablet,
    required T mobile,
    T? smallMobile,
  }) {
    if (isDesktop) return desktop;
    if (isTablet) return tablet;
    if (isSmallMobile && smallMobile != null) return smallMobile;
    return mobile;
  }

  /// Returns a responsive double value based on the device type.
  /// This is a convenience method for [value] with double type.
  double size({
    required double desktop,
    required double tablet,
    required double mobile,
    double? smallMobile,
  }) {
    return value<double>(
      desktop: desktop,
      tablet: tablet,
      mobile: mobile,
      smallMobile: smallMobile,
    );
  }

  /// Returns a responsive EdgeInsets value based on the device type.
  EdgeInsets padding({
    double? all,
    double? horizontal,
    double? vertical,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: left ?? horizontal ?? all ?? 0.0,
      top: top ?? vertical ?? all ?? 0.0,
      right: right ?? horizontal ?? all ?? 0.0,
      bottom: bottom ?? vertical ?? all ?? 0.0,
    );
  }
}
