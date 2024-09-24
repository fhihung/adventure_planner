import 'package:flutter/material.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class BottomActionBar extends StatelessWidget {
  const BottomActionBar({
    required this.label,
    required this.onPressed,
    super.key,
    this.showDivider = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 32.0;
    const verticalPadding = 16.0;

    // Insert bottom padding only if there's no system viewport bottom inset.
    final systemBottomInset = MediaQuery.of(context).padding.bottom;

    return StickyBottomBarVisibility(
      child: ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showDivider) const Divider(height: 1),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  horizontalPadding,
                  verticalPadding,
                  horizontalPadding,
                  systemBottomInset == 0 ? verticalPadding : 0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text(label),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
