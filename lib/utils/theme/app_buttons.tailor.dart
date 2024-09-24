// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_buttons.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppButtonsTailorMixin on ThemeExtension<AppButtons> {
  ButtonStyle get smButton;
  ButtonStyle get mdButton;
  ButtonStyle get lgButton;

  @override
  AppButtons copyWith({
    ButtonStyle? smButton,
    ButtonStyle? mdButton,
    ButtonStyle? lgButton,
  }) {
    return AppButtons(
      smButton: smButton ?? this.smButton,
      mdButton: mdButton ?? this.mdButton,
      lgButton: lgButton ?? this.lgButton,
    );
  }

  @override
  AppButtons lerp(covariant ThemeExtension<AppButtons>? other, double t) {
    if (other is! AppButtons) return this as AppButtons;
    return AppButtons(
      smButton: t < 0.5 ? smButton : other.smButton,
      mdButton: t < 0.5 ? mdButton : other.mdButton,
      lgButton: t < 0.5 ? lgButton : other.lgButton,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppButtons &&
            const DeepCollectionEquality().equals(smButton, other.smButton) &&
            const DeepCollectionEquality().equals(mdButton, other.mdButton) &&
            const DeepCollectionEquality().equals(lgButton, other.lgButton));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(smButton),
      const DeepCollectionEquality().hash(mdButton),
      const DeepCollectionEquality().hash(lgButton),
    );
  }
}

extension AppButtonsBuildContextProps on BuildContext {
  AppButtons get appButtons => Theme.of(this).extension<AppButtons>()!;
  ButtonStyle get smButton => appButtons.smButton;
  ButtonStyle get mdButton => appButtons.mdButton;
  ButtonStyle get lgButton => appButtons.lgButton;
}
