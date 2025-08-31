import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension EdgeInsetsExtension on EdgeInsets {
  EdgeInsets get hw => copyWith(
        top: top.h,
        bottom: bottom.h,
        right: right.w,
        left: left.w,
      );
}

class HWPadding extends SingleChildRenderObjectWidget {
  const HWPadding({
    super.key,
    required Widget super.child,
    required this.padding,
  });

  final EdgeInsets padding;

  @override
  RenderPadding createRenderObject(BuildContext context) {
    return RenderPadding(
      padding: padding is HWEdgeInsets ? padding : padding.hw,
      textDirection: Directionality.maybeOf(context),
    );
  }
}

class HWEdgeInsets extends EdgeInsets {
  HWEdgeInsets.fromLTRB(double left, double top, double right, double bottom)
      : super.fromLTRB(left.w, top.h, right.w, bottom.h);

  HWEdgeInsets.all(double value) : super.all(value.r);

  HWEdgeInsets.symmetric({
    double vertical = 0,
    double horizontal = 0,
  }) : super.symmetric(vertical: vertical.h, horizontal: horizontal.w);

  HWEdgeInsets.only({
    double bottom = 0,
    double right = 0,
    double left = 0,
    double top = 0,
  }) : super.only(
          bottom: bottom.h,
          right: right.w,
          left: left.w,
          top: top.h,
        );
}

class HWEdgeInsetsDirectional extends EdgeInsetsDirectional {
  HWEdgeInsetsDirectional.all(double value) : super.all(value.r);

  HWEdgeInsetsDirectional.only({
    double bottom = 0,
    double end = 0,
    double start = 0,
    double top = 0,
  }) : super.only(
          bottom: bottom.h,
          start: start.w,
          end: end.w,
          top: top.h,
        );

  HWEdgeInsetsDirectional.fromSTEB(
    double start,
    double top,
    double end,
    double bottom,
  ) : super.fromSTEB(
          start.w,
          top.h,
          end.w,
          bottom.h,
        );
}
