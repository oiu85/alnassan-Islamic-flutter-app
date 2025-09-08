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

/// Generic filter button that can handle different types of filters
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
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.h),
      height: widget.height ?? 40.h,
      width: widget.width ?? 70.w,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.4,
        ),
        borderRadius: BorderRadius.circular(10.r),
        color: widget.backgroundColor ?? Colors.white54,
      ),
      child: DropdownButton<T>(
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
          size: 16.sp,
          color: widget.textColor ?? Colors.black,
        ),
        iconSize: 16.sp,
        style: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.bold,
          color: widget.textColor ?? Colors.black,
        ),
        borderRadius: BorderRadius.circular(10.r), // Add border radius to dropdown list
        items: widget.options.map((FilterOption<T> option) {
          return DropdownMenuItem<T>(
            value: option.value,
            child: Text(
              option.label,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                color: Colors.black,
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
//
// /// Specialized filter button for pagination
// class PaginationFilterButton extends StatelessWidget {
//   final int currentPage;
//   final int totalPages;
//   final Function(int page) onPageChanged;
//   final String? label;
//
//   const PaginationFilterButton({
//     super.key,
//     required this.currentPage,
//     required this.totalPages,
//     required this.onPageChanged,
//     this.label,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final pageOptions = List.generate(
//       totalPages,
//       (index) => FilterOption<int>(
//         value: index + 1,
//         label: 'صفحة ${index + 1}',
//         isSelected: index + 1 == currentPage,
//       ),
//     );
//
//     return FilterButton<int>(
//       options: pageOptions,
//       selectedValue: currentPage,
//       label: label ?? 'اختر الصفحة',
//       onChanged: (page) {
//         if (page != null) {
//           onPageChanged(page);
//         }
//       },
//       width: 70.w,
//       hintText: '$currentPage',
//     );
//   }
// }
//
// /// Specialized filter button for per page count
// class PerPageFilterButton extends StatelessWidget {
//   final int currentPerPage;
//   final Function(int perPage) onPerPageChanged;
//   final List<int> availablePerPageOptions;
//   final String? label;
//
//   const PerPageFilterButton({
//     super.key,
//     required this.currentPerPage,
//     required this.onPerPageChanged,
//     this.availablePerPageOptions = const [5, 10, 15, 20],
//     this.label,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final perPageOptions = availablePerPageOptions.map(
//       (count) => FilterOption<int>(
//         value: count,
//         label: '$count عنصر',
//         isSelected: count == currentPerPage,
//       ),
//     ).toList();
//
//     return FilterButton<int>(
//       options: perPageOptions,
//       selectedValue: currentPerPage,
//       label: label ?? 'عدد العناصر',
//       onChanged: (perPage) {
//         if (perPage != null) {
//           onPerPageChanged(perPage);
//         }
//       },
//       width: 70.w,
//       hintText: '$currentPerPage',
//     );
//   }
// }
//
// /// Simple filter button that maintains the original design
// class SimpleFilterButton extends StatelessWidget {
//   final int value;
//   final VoidCallback? onPressed;
//
//   const SimpleFilterButton({
//     super.key,
//     required this.value,
//     this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.h),
//       height: 40.h,
//       width: 70.w,
//       decoration: BoxDecoration(
//         border: Border.all(
//           width: 0.4,
//         ),
//         borderRadius: BorderRadius.circular(10.r),
//         color: Colors.white54,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text(
//             "$value",
//             style: TextStyle(
//               fontSize: 14.sp,
//               fontFamily: 'Tajawal',
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           IconButton(
//             onPressed: onPressed,
//             icon: Icon(
//               Icons.arrow_drop_down_outlined,
//               size: 16.sp,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
