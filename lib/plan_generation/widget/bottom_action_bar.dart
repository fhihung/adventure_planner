import 'package:adventure_planner/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class BottomActionBar extends StatelessWidget {
  const BottomActionBar({
    required this.label,
    required this.onPressed,
    this.secondLabel,
    this.secondText, // Optional second tappable text (e.g., "Login")
    this.secondOnPressed,
    super.key,
    this.showDivider = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final String? secondLabel; // Optional label (e.g., "Already have an account?")
  final String? secondText; // Optional tappable text (e.g., "Login")
  final VoidCallback? secondOnPressed; // Optional action for tappable text
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
              if (secondLabel != null && secondText != null && secondOnPressed != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(secondLabel!, style: AppTextStyle.caption),
                      const SizedBox(width: 4), // Spacing between text and button
                      GestureDetector(
                        onTap: secondOnPressed,
                        child: Text(
                          secondText!, // Customizable tappable text
                          style: AppTextStyle.captionBold,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
