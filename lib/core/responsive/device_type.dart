import 'package:flutter/material.dart';

/// Enum representing different device types based on screen size
enum DeviceType {
  mobile,
  tablet,
  desktop,
}

/// Utility class to determine device type and provide size breakpoints
class DeviceTypeUtil {
  /// The breakpoint for small screens (phones)
  static const double mobileMaxWidth = 650;

  /// The breakpoint for medium screens (tablets)
  static const double tabletMaxWidth = 1100;

  /// Determine the device type based on screen width
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    if (width <= mobileMaxWidth) {
      return DeviceType.mobile;
    } else if (width <= tabletMaxWidth) {
      return DeviceType.tablet;
    } else {
      return DeviceType.desktop;
    }
  }

  /// Check if the device is a mobile phone
  static bool isMobile(BuildContext context) {
    return getDeviceType(context) == DeviceType.mobile;
  }

  /// Check if the device is a tablet
  static bool isTablet(BuildContext context) {
    return getDeviceType(context) == DeviceType.tablet;
  }

  /// Check if the device is a desktop
  static bool isDesktop(BuildContext context) {
    return getDeviceType(context) == DeviceType.desktop;
  }

  /// Get a value based on device type
  /// 
  /// This is a convenient way to return different values for different device types
  /// Example: `getValue(context, mobile: 10, tablet: 20, desktop: 30)`
  static T getValue<T>({
    required BuildContext context,
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    final deviceType = getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet;
      case DeviceType.desktop:
        return desktop;
    }
  }

  /// Get a responsive padding that adjusts to the screen size
  static EdgeInsets getResponsivePadding(BuildContext context) {
    final deviceType = getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.mobile:
        return const EdgeInsets.symmetric(horizontal: 16);
      case DeviceType.tablet:
        return const EdgeInsets.symmetric(horizontal: 24);
      case DeviceType.desktop:
        return const EdgeInsets.symmetric(horizontal: 32);
    }
  }
}

/// Extension on BuildContext to easily access device type
extension DeviceTypeExtension on BuildContext {
  /// Get the current device type
  DeviceType get deviceType => DeviceTypeUtil.getDeviceType(this);

  /// Check if the device is a mobile phone
  bool get isMobile => DeviceTypeUtil.isMobile(this);

  /// Check if the device is a tablet
  bool get isTablet => DeviceTypeUtil.isTablet(this);

  /// Check if the device is a desktop
  bool get isDesktop => DeviceTypeUtil.isDesktop(this);

  /// Get a responsive value based on device type
  T deviceValue<T>({
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    return DeviceTypeUtil.getValue(
      context: this,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );
  }
}