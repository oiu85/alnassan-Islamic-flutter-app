import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Custom screen utility extensions to avoid conflicts
extension ScreenUtils on num {
  /// Get responsive width
  double get sw => ScreenUtil().setWidth(this);
  
  /// Get responsive height
  double get sh => ScreenUtil().setHeight(this);
  
  /// Get responsive radius
  double get sr => ScreenUtil().radius(this);
  
  /// Get responsive font size
  double get sf => ScreenUtil().setSp(this) *1;
  
  /// Get responsive padding/margin
  double get sp => ScreenUtil().setWidth(this);
}

/// Custom responsive size extensions
extension ResponsiveSize on double {
  /// Get responsive width
  double get rw => ScreenUtil().setWidth(this);
  
  /// Get responsive height
  double get rh => ScreenUtil().setHeight(this);
  
  /// Get responsive radius
  double get rr => ScreenUtil().radius(this);
  
  /// Get responsive font size
  double get rf => ScreenUtil().setSp(this);
  
  /// Get responsive padding/margin
  double get rp => ScreenUtil().setWidth(this);
} 