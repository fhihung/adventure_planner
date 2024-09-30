import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

enum SignUpStatus { initial, loading, success, failure }

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    String? token,
  }) = _SignUpState;
}
