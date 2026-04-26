import 'package:flutter/material.dart';
import 'package:nassan_app/core/utils/device_layout.dart';
import 'package:nassan_app/core/utils/responsive.dart';

/// Picks a child by [DeviceType] (width breakpoints).
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    switch (context.deviceType) {
      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile;
      case DeviceType.tablet:
        return tablet ?? mobile;
      case DeviceType.mobile:
        return mobile;
    }
  }
}

/// Shell padding from [responsiveShellBodyPadding] plus optional [maxWidth].
class ResponsiveContainer extends StatelessWidget {
  const ResponsiveContainer({
    super.key,
    required this.child,
    this.padding,
    this.center = false,
    this.maxWidth,
    this.widthFactor,
  });

  final Widget child;
  final EdgeInsets? padding;
  final bool center;
  final double? maxWidth;
  final double? widthFactor;

  @override
  Widget build(BuildContext context) {
    final EdgeInsets responsivePadding = responsiveShellBodyPadding(context);

    final EdgeInsetsGeometry combinedPadding = padding != null
        ? responsivePadding.add(padding!)
        : responsivePadding;

    Widget content = Padding(padding: combinedPadding, child: child);

    final effectiveMaxWidth = maxWidth ?? context.maxContentWidth;
    if (effectiveMaxWidth.isFinite) {
      content = Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: effectiveMaxWidth),
          child: content,
        ),
      );
    }

    if (center) {
      content = Center(widthFactor: widthFactor, child: content);
    } else if (widthFactor != null) {
      content = FractionallySizedBox(widthFactor: widthFactor, child: content);
    }

    return content;
  }
}

typedef ResponsiveWidgetBuilder =
    Widget Function(BuildContext context, BoxConstraints constraints);

class ResponsiveConstrainedBox extends StatelessWidget {
  const ResponsiveConstrainedBox({super.key, required this.builder});

  final ResponsiveWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => builder(context, constraints),
    );
  }
}
