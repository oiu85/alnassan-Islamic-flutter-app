import 'package:flutter/material.dart';

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

  String _getDisplayText() {
    if (_selectedValue == null) {
      return widget.hintText ?? 'اختر';
    }
    
    final selectedOption = widget.options.firstWhere(
      (option) => option.value == _selectedValue,
      orElse: () => FilterOption(value: _selectedValue as T, label: _selectedValue.toString()),
    );
    
    return selectedOption.label;
  }

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            widget.label ?? 'اختر فلتر',
            style: const TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.options.length,
              itemBuilder: (context, index) {
                final option = widget.options[index];
                final isSelected = option.value == _selectedValue;
                
                return ListTile(
                  title: Text(
                    option.label,
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 16,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: isSelected ? Colors.blue : Colors.black,
                    ),
                  ),
                  trailing: isSelected ? const Icon(Icons.check, color: Colors.blue) : null,
                  onTap: () {
                    setState(() {
                      _selectedValue = option.value;
                    });
                    widget.onChanged?.call(option.value);
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedValue = null;
                });
                widget.onChanged?.call(null);
                Navigator.of(context).pop();
              },
              child: const Text(
                'مسح الفلتر',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  color: Colors.red,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'إلغاء',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showFilterDialog,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        height: widget.height ?? 40,
        width: widget.width ?? 70,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.4,
          ),
          borderRadius: BorderRadius.circular(10),
          color: widget.backgroundColor ?? Colors.white54,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _getDisplayText(),
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 12,
                    color: widget.textColor ?? Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            GestureDetector(
              onTap: _showFilterDialog,
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.arrow_drop_down_outlined, size: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Specialized filter button for pagination
class PaginationFilterButton extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int page) onPageChanged;
  final String? label;

  const PaginationFilterButton({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final pageOptions = List.generate(
      totalPages,
      (index) => FilterOption<int>(
        value: index + 1,
        label: 'صفحة ${index + 1}',
        isSelected: index + 1 == currentPage,
      ),
    );

    return FilterButton<int>(
      options: pageOptions,
      selectedValue: currentPage,
      label: label ?? 'اختر الصفحة',
      onChanged: (page) {
        if (page != null) {
          onPageChanged(page);
        }
      },
      width: 70,
      hintText: '$currentPage',
    );
  }
}

/// Specialized filter button for per page count
class PerPageFilterButton extends StatelessWidget {
  final int currentPerPage;
  final Function(int perPage) onPerPageChanged;
  final List<int> availablePerPageOptions;
  final String? label;

  const PerPageFilterButton({
    super.key,
    required this.currentPerPage,
    required this.onPerPageChanged,
    this.availablePerPageOptions = const [5, 10, 15, 20],
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final perPageOptions = availablePerPageOptions.map(
      (count) => FilterOption<int>(
        value: count,
        label: '$count عنصر',
        isSelected: count == currentPerPage,
      ),
    ).toList();

    return FilterButton<int>(
      options: perPageOptions,
      selectedValue: currentPerPage,
      label: label ?? 'عدد العناصر',
      onChanged: (perPage) {
        if (perPage != null) {
          onPerPageChanged(perPage);
        }
      },
      width: 70,
      hintText: '$currentPerPage',
    );
  }
}

/// Simple filter button that maintains the original design
class SimpleFilterButton extends StatelessWidget {
  final int value;
  final VoidCallback? onPressed;

  const SimpleFilterButton({
    super.key,
    required this.value,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      height: 40,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.4,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("$value"),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_drop_down_outlined, size: 16),
          ),
        ],
      ),
    );
  }
}
