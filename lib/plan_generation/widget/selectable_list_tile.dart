import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:flutter/material.dart';

class SelectableListTile extends StatefulWidget {
  const SelectableListTile({
    required this.title,
    required this.padding,
    required this.onSelected, // Thêm callback này
    super.key,
  });

  final String title;
  final EdgeInsets padding;
  final ValueChanged<bool> onSelected; // Loại callback nhận giá trị bool

  @override
  State<SelectableListTile> createState() => _SelectableListTileState();
}

class _SelectableListTileState extends State<SelectableListTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: CheckboxListTile(
        checkColor: CommonColors.primary,
        title: Text(widget.title),
        value: isSelected,
        onChanged: (selected) {
          setState(() => isSelected = selected!);
          widget.onSelected(isSelected); // Gọi callback khi có thay đổi
        },
      ),
    );
  }
}
