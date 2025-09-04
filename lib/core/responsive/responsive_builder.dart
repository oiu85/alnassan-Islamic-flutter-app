import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/responsive_context.dart';

/// A widgets that provides a [ResponsiveContext] to its children.
/// This makes it easy to access responsive values throughout the widgets tree.
class ResponsiveBuilder extends StatelessWidget {
  /// The builder function that receives the [ResponsiveContext].
  final Widget Function(BuildContext context, ResponsiveContext responsive) builder;

  const ResponsiveBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveContext.of(context);
    return builder(context, responsive);
  }
}

/// A widgets that provides a [ResponsiveContext] to its children and applies
/// responsive padding based on the device type.
class ResponsiveContainer extends StatelessWidget {
  /// The child widgets.
  final Widget child;

  /// The padding to apply based on the device type.
  final EdgeInsets Function(ResponsiveContext responsive)? padding;

  /// The margin to apply based on the device type.
  final EdgeInsets Function(ResponsiveContext responsive)? margin;

  /// Whether to center the child.
  final bool center;

  const ResponsiveContainer({
    Key? key,
    required this.child,
    this.padding,
    this.margin,
    this.center = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, responsive) {
        Widget result = child;

        if (padding != null) {
          result = Padding(
            padding: padding!(responsive),
            child: result,
          );
        }

        if (center) {
          result = Center(child: result);
        }

        if (margin != null) {
          result = Container(
            margin: margin!(responsive),
            child: result,
          );
        }

        return result;
      },
    );
  }
}
