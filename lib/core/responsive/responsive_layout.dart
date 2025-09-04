import 'package:flutter/material.dart';

import 'device_type.dart';

/// A responsive layout widgets that displays different layouts based on screen size
///
/// This widgets will show different child widgets based on the device type
/// (mobile, tablet, desktop). If a specific device type is not provided,
/// it will fallback to the smaller device layout.
class ResponsiveLayout extends StatelessWidget {
  /// Child widgets to display on mobile devices
  final Widget mobile;

  /// Child widgets to display on tablet devices
  final Widget? tablet;

  /// Child widgets to display on desktop devices
  final Widget? desktop;

  /// Create a responsive layout widgets
  ///
  /// The [mobile] parameter is required, while [tablet] and [desktop] are optional.
  /// If [tablet] is null, [mobile] will be used for tablet devices.
  /// If [desktop] is null, [tablet] will be used for desktop devices (or [mobile] if [tablet] is also null).
  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceType = context.deviceType;

    // Return the appropriate layout based on device type
    switch (deviceType) {
      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile;
      case DeviceType.tablet:
        return tablet ?? mobile;
      case DeviceType.mobile:
        return mobile;
    }
  }
}

/// A widgets that shows content with responsive padding based on screen size
class ResponsiveContainer extends StatelessWidget {
  /// Child widgets to display
  final Widget child;

  /// Additional padding to add (will be combined with responsive padding)
  final EdgeInsets? padding;

  /// Whether to center the child in the available space
  final bool center;

  /// Maximum width for the container content
  final double? maxWidth;

  /// Width factor for the container (0.0 to 1.0)
  final double? widthFactor;

  /// Create a responsive container
  const ResponsiveContainer({
    Key? key,
    required this.child,
    this.padding,
    this.center = false,
    this.maxWidth,
    this.widthFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get responsive padding based on device type
    final responsivePadding = context.deviceValue(
      mobile: const EdgeInsets.symmetric(horizontal: 16),
      tablet: const EdgeInsets.symmetric(horizontal: 24),
      desktop: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    );

    // Combine responsive padding with any additional padding
    final combinedPadding = padding != null 
      ? responsivePadding.add(padding!)
      : responsivePadding;

    Widget content = Padding(
      padding: combinedPadding,
      child: child,
    );

    // Wrap with constraint box if maxWidth is specified
    if (maxWidth != null) {
      content = Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth!),
          child: content,
        ),
      );
    }

    // Center the content if specified
    if (center) {
      content = Center(
        widthFactor: widthFactor,
        child: content,
      );
    } else if (widthFactor != null) {
      content = FractionallySizedBox(
        widthFactor: widthFactor,
        child: content,
      );
    }

    return content;
  }
}

/// A builder function for creating responsive layouts
typedef ResponsiveWidgetBuilder = Widget Function(BuildContext context, BoxConstraints constraints);

/// A widgets that provides a responsive layout based on constraints
///
/// This is useful for creating responsive layouts using a builder pattern
/// where you need access to the actual constraints of the parent widgets.
class ResponsiveConstrainedBox extends StatelessWidget {
  /// Builder function for creating the responsive layout
  final ResponsiveWidgetBuilder builder;

  /// Create a responsive constrained box
  const ResponsiveConstrainedBox({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return builder(context, constraints);
      },
    );
  }
}