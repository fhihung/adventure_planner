import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default(false) bool isShowPassword,
    @Default(false) bool isRememberMe,
    String? token,
  }) = _LoginState;
}
