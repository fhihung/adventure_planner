import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

abstract class SignUpEvent {
  const SignUpEvent();
}

@freezed
class SignUpInitiated extends SignUpEvent with _$SignUpInitiated {
  const factory SignUpInitiated() = _SignUpInitiated;
}

@freezed
class SignUpSubmitted extends SignUpEvent with _$SignUpSubmitted {
  const factory SignUpSubmitted({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required BuildContext context,
  }) = _SignUpSubmitted;
}
