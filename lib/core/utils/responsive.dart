import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';

enum AppSizeClass { mobile, tablet }

const double _kTabletBreakpoint = 600.0;

const Size _kPhoneDesignSize = Size(375, 812);
const Size _kTabletDesignSize = Size(600, 1024);

bool isTablet(BoxConstraints constraints) {
  return constraints.biggest.shortestSide >= _kTabletBreakpoint;
}

bool isTabletFromSize(Size size) {
  return size.shortestSide >= _kTabletBreakpoint;
}

bool isTabletContext(BuildContext context) {
  final size = MediaQuery.sizeOf(context);
  return size.shortestSide >= _kTabletBreakpoint;
}

AppSizeClass sizeClassFor(BoxConstraints constraints) =>
    isTablet(constraints) ? AppSizeClass.tablet : AppSizeClass.mobile;

Size getDesignSize(BoxConstraints constraints) {
  return isTablet(constraints) ? _kTabletDesignSize : _kPhoneDesignSize;
}

Size getDesignSizeFromContext(BuildContext context) {
  return isTabletContext(context) ? _kTabletDesignSize : _kPhoneDesignSize;
}

/// Layout branch using [isTabletContext] (shortest side ≥ 600).
///
/// Use with values already passed through ScreenUtil (e.g. [mobile] is `20.h`).
T responsiveLayoutValue<T>(
  BuildContext context, {
  required T mobile,
  required T tablet,
}) {
  return isTabletContext(context) ? tablet : mobile;
}

/// Horizontal inset for primary content (design px → [ScreenUtilRes.padding]).
double responsiveContentInsetX(BuildContext context) {
  return responsiveLayoutValue(context, mobile: 27, tablet: 40).p;
}

/// Symmetric horizontal padding for shell / page columns.
EdgeInsets responsiveContentHorizontalEdgeInsets(BuildContext context) {
  return EdgeInsets.symmetric(horizontal: responsiveContentInsetX(context));
}

/// Default body padding for [ResponsiveContainer]: horizontal inset plus
/// light vertical padding on tablet.
EdgeInsets responsiveShellBodyPadding(BuildContext context) {
  final horizontal = responsiveContentInsetX(context);
  if (isTabletContext(context)) {
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: 12.s);
  }
  return EdgeInsets.symmetric(horizontal: horizontal);
}

/// Inner padding for the home hero card text block (follows parent width).
EdgeInsets homeMainCardTextPadding(BuildContext context) {
  return responsiveLayoutValue(
    context,
    mobile: EdgeInsets.fromLTRB(70.p, 50.s, 70.p, 0),
    tablet: EdgeInsets.fromLTRB(48.p, 40.s, 48.p, 0),
  );
}
