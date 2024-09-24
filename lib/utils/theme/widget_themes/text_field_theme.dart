import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';

class CommonTextFormFieldTheme {
  CommonTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.lightThemeColors.backgroundDarkVersion,
    suffixIconColor: AppColors.lightThemeColors.backgroundDarkVersion,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    // constraints:  BoxConstraints.expand(
    //   height: AppSizes.inputFieldHeight,
    // ),
    labelStyle: AppTextStyle.caption,
    hintStyle: AppTextStyle.caption.copyWith(
      color: AppColors.lightThemeColors.textGray2,
    ),
    // errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: AppColors.lightThemeColors.textGray2,
    ),
    // disabledBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    //   borderSide: BorderSide(color: AppColors.lightThemeColors.border5),
    // ),
    // border: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    //   borderSide: BorderSide(color: AppColors.lightThemeColors.border5),
    // ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(90),
      borderSide: BorderSide(color: AppColors.lightThemeColors.border5),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(90),
      borderSide: BorderSide(color: AppColors.lightThemeColors.border1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(90),
      borderSide: BorderSide(
        color: AppColors.lightThemeColors.backgroundRed,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(90),
      borderSide: BorderSide(
        width: 2,
        color: AppColors.lightThemeColors.backgroundRed,
      ),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.darkThemeColors.backgroundDarkVersion,
    suffixIconColor: AppColors.darkThemeColors.backgroundDarkVersion,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    // constraints:  BoxConstraints.expand(
    //   height: AppSizes.inputFieldHeight,
    // ),
    labelStyle: AppTextStyle.caption,
    hintStyle: AppTextStyle.caption.copyWith(
      color: AppColors.darkThemeColors.textGray2,
    ),
    // errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: AppColors.darkThemeColors.textGray2,
    ),
    // disabledBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    //   borderSide: BorderSide(color: AppColors.darkThemeColors.border5),
    // ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSpaces.space3),
      borderSide: BorderSide(color: AppColors.darkThemeColors.border5),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSpaces.space3),
      borderSide: BorderSide(color: AppColors.darkThemeColors.border5),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSpaces.space3),
      borderSide: BorderSide(color: AppColors.darkThemeColors.border1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSpaces.space3),
      borderSide: BorderSide(color: AppColors.darkThemeColors.backgroundRed),
    ),
    // focusedErrorBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    //   borderSide: const BorderSide(width: 2, color: AppColors.warning),
    // ),
  );
}
