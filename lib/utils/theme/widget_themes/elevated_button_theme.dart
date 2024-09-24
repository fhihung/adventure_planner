import 'package:flutter/material.dart';

/* -- Light & Dark Elevated Button Themes -- */
class CommonElevatedButtonTheme {
  CommonElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // iconColor: AppColors.lightThemeColors.backgroundWhite,
      // foregroundColor: AppColors.lightThemeColors.textWhite,
      // backgroundColor: AppColors.lightThemeColors.backgroundPrimary,
      // disabledForegroundColor: AppColors.lightThemeColors.textGray4,
      // disabledBackgroundColor: AppColors.lightThemeColors.textGray6,
      // disabledIconColor: AppColors.lightThemeColors.textGray4,
      // side: BorderSide(color: AppColors.lightThemeColors.backgroundPrimary),
      // padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360),
      ),
    ),
  );

  /* -- Dark Theme -- */
  // static final darkElevatedButtonTheme = ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     elevation: 0,
  //     foregroundColor: AppColors.light,
  //     backgroundColor: AppColors.primary,
  //     disabledForegroundColor: AppColors.darkGrey,
  //     disabledBackgroundColor: AppColors.darkerGrey,
  //     side: const BorderSide(color: AppColors.primary),
  //     padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
  //     textStyle: const TextStyle(
  //       fontSize: 16,
  //       color: AppColors.textWhite,
  //       fontWeight: FontWeight.w600,
  //     ),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(
  //         AppSizes.buttonRadius,
  //       ),
  //     ),
  //   ),
  // );
}
