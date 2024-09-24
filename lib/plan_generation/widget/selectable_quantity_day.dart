import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';

class SelectableQuantityDayList extends StatefulWidget {
  // Callback to send selected quantity

  const SelectableQuantityDayList({
    required this.onQuantitySelected,
    super.key,
  });
  final Function(int?) onQuantitySelected;

  @override
  State<SelectableQuantityDayList> createState() => _SelectableQuantityDayListState();
}

class _SelectableQuantityDayListState extends State<SelectableQuantityDayList> {
  int? selectedDays; // Store selected days as an integer
  final TextEditingController _otherDaysController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final mood in _moods)
          RadioListTile<int>(
            activeColor: CommonColors.primary,
            title: Text(mood.label),
            secondary: Text(
              mood.emoji,
              style: const TextStyle(fontSize: 24),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            value: mood.days, // Use the integer value for radio
            groupValue: selectedDays,
            onChanged: (int? newDays) {
              setState(() {
                selectedDays = newDays;
                _otherDaysController.clear(); // Clear input when switching to other options
                widget.onQuantitySelected(selectedDays); // Notify the parent with selected days
              });
            },
          ),
        if (selectedDays == 0) // Show TextField if 'Other' is selected (0 indicates Other)
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Container(
              height: AppSpaces.space10,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CommonColors.neutrals4,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(90),
              ),
              alignment: Alignment.center,
              child: TextFormField(
                controller: _otherDaysController,
                keyboardType: TextInputType.number,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: CommonColors.neutrals2,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  isCollapsed: true,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: AppSpaces.space5,
                    vertical: AppSpaces.space5,
                  ),
                  hintText: 'Enter number of days',
                  hintStyle: AppTextStyle.caption,
                ),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    final days = int.tryParse(value);
                    widget.onQuantitySelected(days); // Notify the parent with the new value
                  } else {
                    widget.onQuantitySelected(null); // Clear the selection if input is empty
                  }
                },
              ),
            ),
          ),
      ],
    );
  }
}

const _moods = [
  (label: '1 Day', emoji: '🎉', days: 1),
  (label: '2 Days', emoji: '🍹', days: 2),
  (label: '3 Days', emoji: '🛌', days: 3),
  (label: '4 Days', emoji: '🏋️‍♂️', days: 4),
  (label: '5 Days', emoji: '🎨', days: 5),
  (label: '6 Days', emoji: '🎧', days: 6),
  (label: '7 Days', emoji: '🎮', days: 7),
  (label: 'Other', emoji: '✏️', days: 0), // Use 0 to indicate "Other"
];
