import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Generic filter option model
class FilterOption<T> {
  final T value;
  final String label;
  final bool isSelected;

  const FilterOption({
    required this.value,
    required this.label,
    this.isSelected = false,
  });

  FilterOption<T> copyWith({
    T? value,
    String? label,
    bool? isSelected,
  }) {
    return FilterOption<T>(
      value: value ?? this.value,
      label: label ?? this.label,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
class FilterButton<T> extends StatefulWidget {
  final List<FilterOption<T>> options;
  final T? selectedValue;
  final String? label;
  final Function(T? value)? onChanged;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final String? hintText;

  const FilterButton({
    super.key,
    required this.options,
    this.selectedValue,
    this.label,
    this.onChanged,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.hintText,
  });

  @override
  State<FilterButton<T>> createState() => _FilterButtonState<T>();
}

class _FilterButtonState<T> extends State<FilterButton<T>> {
  T? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedValue;
  }

  @override
  void didUpdateWidget(FilterButton<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedValue != oldWidget.selectedValue) {
      _selectedValue = widget.selectedValue;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.h),
      height: widget.height ?? 40.h,
      width: widget.width ?? 70.w,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.6,
        ),
        borderRadius: BorderRadius.circular(10.r),
        color: widget.backgroundColor ?? Colors.white54,
      ),
      child:
      DropdownButton<T>(


        value: _selectedValue,
        hint: Text(
          widget.hintText ?? 'اختر',
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.bold,
            color: widget.textColor ?? Colors.black54,
          ),
        ),


        isExpanded: true,
        underline: const SizedBox(), // Remove default underline
        icon: Icon(
          Icons.arrow_drop_down_outlined,
          size: 25.sp,
          color: widget.textColor ?? Colors.black,
        ),

        iconSize: 40.sp,
        borderRadius: BorderRadius.circular(10.r),


        items: widget.options.map((FilterOption<T> option) {
          return DropdownMenuItem<T>(
            value: option.value,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                option.label,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: (T? newValue) {
          setState(() {
            _selectedValue = newValue;
          });
          widget.onChanged?.call(newValue);
        },
      ),
    );
  }
}
