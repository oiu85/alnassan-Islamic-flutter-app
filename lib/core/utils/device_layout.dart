import 'package:flutter/material.dart';

/// Layout buckets from logical width (not ScreenUtil).
enum DeviceType { mobile, tablet, desktop }

/// Width-based layout breakpoints for max width and [deviceValue].
class DeviceTypeUtil {
  static const double mobileMaxWidth = 650;
  static const double tabletMaxWidth = 1100;

  static const double tabletMaxContentWidth = 720.0;
  static const double desktopMaxContentWidth = 900.0;
  static const double minTouchTargetSize = 44.0;

  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width <= mobileMaxWidth) {
      return DeviceType.mobile;
    }
    if (width <= tabletMaxWidth) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }

  static bool isMobile(BuildContext context) {
    return getDeviceType(context) == DeviceType.mobile;
  }

  static bool isTablet(BuildContext context) {
    return getDeviceType(context) == DeviceType.tablet;
  }

  static bool isDesktop(BuildContext context) {
    return getDeviceType(context) == DeviceType.desktop;
  }

  static T getValue<T>({
    required BuildContext context,
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    switch (getDeviceType(context)) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet;
      case DeviceType.desktop:
        return desktop;
    }
  }

  static EdgeInsets getResponsivePadding(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.mobile:
        return const EdgeInsets.symmetric(horizontal: 16);
      case DeviceType.tablet:
        return const EdgeInsets.symmetric(horizontal: 24);
      case DeviceType.desktop:
        return const EdgeInsets.symmetric(horizontal: 32);
    }
  }

  static double getMaxContentWidth(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.mobile:
        return double.infinity;
      case DeviceType.tablet:
        return tabletMaxContentWidth;
      case DeviceType.desktop:
        return desktopMaxContentWidth;
    }
  }
}

extension DeviceTypeExtension on BuildContext {
  DeviceType get deviceType => DeviceTypeUtil.getDeviceType(this);

  bool get isMobile => DeviceTypeUtil.isMobile(this);

  bool get isTablet => DeviceTypeUtil.isTablet(this);

  bool get isDesktop => DeviceTypeUtil.isDesktop(this);

  T deviceValue<T>({required T mobile, required T tablet, required T desktop}) {
    return DeviceTypeUtil.getValue(
      context: this,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );
  }

  double get maxContentWidth => DeviceTypeUtil.getMaxContentWidth(this);
}
