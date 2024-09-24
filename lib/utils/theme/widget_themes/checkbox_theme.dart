import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';

/// Custom Class for Light & Dark Text Themes
class CommonCheckboxTheme {
  CommonCheckboxTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.xs),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.lightThemeColors.textGray2;
      } else {
        return AppColors.darkThemeColors.textGray2;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.lightThemeColors.backgroundWhite2DarkVersion;
      } else {
        return Colors.transparent;
      }
    }),
  );

  /// Customizable Dark Text Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        AppSizes.xs,
      ),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.darkThemeColors.textBlackDarkVersion;
      } else {
        return AppColors.darkThemeColors.textBlackDarkVersion;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.darkThemeColors.backgroundWhite2DarkVersion;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
