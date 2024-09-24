import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

abstract class LoginEvent {
  const LoginEvent();
}

@freezed
class LoginInitiated extends LoginEvent with _$LoginInitiated {
  const factory LoginInitiated() = _LoginInitiated;
}

@freezed
class EyeSlashPressed extends LoginEvent with _$EyeSlashPressed {
  const factory EyeSlashPressed() = _EyeSlashPressed;
}

@freezed
class RememberMePressed extends LoginEvent with _$RememberMePressed {
  const factory RememberMePressed({required bool isCheck}) = _RememberMePressed;
}

@freezed
class LoginButtonPressed extends LoginEvent with _$LoginButtonPressed {
  const factory LoginButtonPressed({
    required String email,
    required String password,
    required BuildContext context,
  }) = _LoginButtonPressed;
}

@freezed
class ForgotPasswordButtonPressed extends LoginEvent with _$ForgotPasswordButtonPressed {
  const factory ForgotPasswordButtonPressed() = _ForgotPasswordButtonPressed;
}
