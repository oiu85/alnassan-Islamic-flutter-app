import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/responsive_context.dart';
import 'package:nassan_app/core/responsive/responsive_scaling.dart';


/// A utility class for defining responsive values.
class ResponsiveValue<T> {
  final T desktop;
  final T tablet;
  final T mobile;
  final T? smallMobile;

  const ResponsiveValue({
    required this.desktop,
    required this.tablet,
    required this.mobile,
    this.smallMobile,
  });

  /// Returns the value based on the [ResponsiveContext].
  T resolve(ResponsiveContext responsive) {
    return responsive.value<T>(
      desktop: desktop,
      tablet: tablet,
      mobile: mobile,
      smallMobile: smallMobile,
    );
  }

  /// Returns the value based on the [BuildContext].
  T resolveWithContext(BuildContext context) {
    return resolve(ResponsiveContext.of(context));
  }

  /// Returns a scaled value based on the [BuildContext].
  /// This is useful for dimensions that need to be scaled.
  double resolveScaled(BuildContext context) {
    final value = resolveWithContext(context);
    if (value is double) {
      return context.rs(value);
    }
    throw Exception('Value is not a double');
  }

  /// Returns a scaled font size based on the [BuildContext].
  double resolveFontSize(BuildContext context) {
    final value = resolveWithContext(context);
    if (value is double) {
      return context.rFontSize(value);
    }
    throw Exception('Value is not a double');
  }

  /// Returns a responsive padding based on the [BuildContext].
  EdgeInsets resolvePadding(BuildContext context) {
    final responsive = ResponsiveContext.of(context);
    final value = resolve(responsive);
    
    if (value is EdgeInsets) {
      return context.rPadding(
        left: value.left,
        top: value.top,
        right: value.right,
        bottom: value.bottom,
      );
    }
    
    if (value is double) {
      return context.rPadding(all: value);
    }
    
    throw Exception('Value is not an EdgeInsets or double');
  }
}

/// Extension methods for defining responsive values.
extension ResponsiveValueExtension<T> on T {
  /// Creates a [ResponsiveValue] with this value as the desktop value.
  ResponsiveValue<T> responsive({
    required T tablet,
    required T mobile,
    T? smallMobile,
  }) {
    return ResponsiveValue<T>(
      desktop: this,
      tablet: tablet,
      mobile: mobile,
      smallMobile: smallMobile,
    );
  }
}

/// Extension methods for defining responsive double values.
extension ResponsiveDoubleExtension on double {
  /// Creates a [ResponsiveValue] with this value as the desktop value.
  /// The tablet value is calculated as 90% of this value.
  /// The mobile value is calculated as 80% of this value.
  /// The smallMobile value is calculated as 70% of this value.
  ResponsiveValue<double> responsiveScale({
    double tabletFactor = 0.9,
    double mobileFactor = 0.8,
    double smallMobileFactor = 0.7,
  }) {
    return ResponsiveValue<double>(
      desktop: this,
      tablet: this * tabletFactor,
      mobile: this * mobileFactor,
      smallMobile: this * smallMobileFactor,
    );
  }
}
