import 'package:adventure_planner/utils/constants/colors.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:flutter/material.dart';

class SelectableChip extends StatelessWidget {
  const SelectableChip({
    required this.label,
    required this.isSelected,
    required this.onSelected,
    super.key,
  });

  final Widget label;
  final bool isSelected; // New property to indicate if the chip is selected
  final ValueChanged<bool> onSelected; // Callback to handle selection

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      checkmarkColor: isSelected ? Colors.white : Colors.black,
      onSelected: onSelected,
      selected: isSelected,
      selectedColor: PrimaryColors.baseDarkMode, // Màu khi được chọn
      backgroundColor: CommonColors.neutrals7, // Màu khi không chọn
      label: DefaultTextStyle(
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black, // Đổi màu text
        ),
        child: label,
      ),
    );
  }
}
