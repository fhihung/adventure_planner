import 'package:adventure_planner/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_buttons.tailor.dart';

@tailorMixin
class AppButtons extends ThemeExtension<AppButtons> with _$AppButtonsTailorMixin {
  const AppButtons({
    required this.smButton,
    required this.mdButton,
    required this.lgButton,
  });

  @override
  final ButtonStyle smButton;
  @override
  final ButtonStyle mdButton;
  @override
  final ButtonStyle lgButton;

  static final AppButtons defaultButtons = AppButtons(
    smButton: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
      iconColor: AppColors.defaultAppColors.textWhite,
      foregroundColor: AppColors.defaultAppColors.textWhite,
      backgroundColor: AppColors.defaultAppColors.backgroundPrimary,
      disabledBackgroundColor: AppColors.defaultAppColors.backgroundGray6,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
    ),
    mdButton: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
      iconColor: AppColors.defaultAppColors.textWhite,
      foregroundColor: AppColors.defaultAppColors.textWhite,
      backgroundColor: AppColors.defaultAppColors.backgroundPrimary,
      disabledBackgroundColor: AppColors.defaultAppColors.backgroundGray6,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
    ),
    lgButton: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
      iconColor: AppColors.defaultAppColors.textWhite,
      foregroundColor: AppColors.defaultAppColors.textWhite,
      backgroundColor: AppColors.defaultAppColors.backgroundPrimary,
      disabledBackgroundColor: AppColors.defaultAppColors.backgroundGray6,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
    ),
  );

  static final AppButtons outlineButtons = AppButtons(
    smButton: OutlinedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 8),
      side: BorderSide(
        color: AppColors.defaultAppColors.borderPrimary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
      iconColor: AppColors.defaultAppColors.textPrimary,
      foregroundColor: AppColors.defaultAppColors.textPrimary,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
    ),
    mdButton: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 12),
      side: BorderSide(
        color: AppColors.defaultAppColors.borderPrimary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
      iconColor: AppColors.defaultAppColors.textPrimary,
      foregroundColor: AppColors.defaultAppColors.textPrimary,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
    ),
    lgButton: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 16),
      side: BorderSide(
        color: AppColors.defaultAppColors.borderPrimary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
      iconColor: AppColors.defaultAppColors.textPrimary,
      foregroundColor: AppColors.defaultAppColors.textPrimary,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
    ),
  );

  static final AppButtons textButtons = AppButtons(
    smButton: TextButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 8),
      iconColor: AppColors.defaultAppColors.textPrimary,
      foregroundColor: AppColors.defaultAppColors.textPrimary,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
    ),
    mdButton: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
      iconColor: AppColors.defaultAppColors.textPrimary,
      foregroundColor: AppColors.defaultAppColors.textPrimary,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
    ),
    lgButton: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
      iconColor: AppColors.defaultAppColors.textPrimary,
      foregroundColor: AppColors.defaultAppColors.textPrimary,
      disabledForegroundColor: AppColors.defaultAppColors.textGray4,
      disabledIconColor: AppColors.defaultAppColors.textGray4,
    ),
  );
}
