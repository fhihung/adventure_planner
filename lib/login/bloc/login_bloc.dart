import 'dart:async';

import 'package:adventure_planner/app/common_bottom_navigation.dart';
import 'package:adventure_planner/login/bloc/login_event.dart';
import 'package:adventure_planner/login/bloc/login_state.dart';
import 'package:adventure_planner/login/controller/login_controller.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/local_storage/storage_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginInitiated>(
      _onLoginInitiated,
    );
    on<EyeSlashPressed>(
      _onEyeSlashPressed,
    );
    on<RememberMePressed>(
      _onRememberMePressed,
    );
    on<LoginButtonPressed>(
      _onLoginButtonPressed,
    );

    on<ForgotPasswordButtonPressed>(
      _onForgotPasswordButtonPressed,
    );
  }

  final storageService = StorageService();
  final LoginController loginController = LoginController();

  FutureOr<void> _onLoginInitiated(
    LoginInitiated event,
    Emitter<LoginState> emit,
  ) {}

  FutureOr<void> _onEyeSlashPressed(
    EyeSlashPressed event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        isShowPassword: !state.isShowPassword,
      ),
    );
  }

  FutureOr<void> _onRememberMePressed(
    RememberMePressed event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        isRememberMe: event.isCheck,
      ),
    );
  }

  FutureOr<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    // Call login API
    emit(state.copyWith(isLoading: true));
    final response = await loginController.login(
      event.email,
      event.password,
      event.context,
    );
    emit(state.copyWith(isLoading: false));
    if (response.statusCode == 200 && response.body['token'] != null) {
      await storageService.saveToken(response.body['token'].toString());
      final token = response.body['token'].toString();
      final user = await loginController.getUser(token);
      await storageService.saveUserId(
        user.id.toString(),
      );
      toastification.show(
        type: ToastificationType.success,
        style: ToastificationStyle.flatColored,
        title: const Text('Login successfully'),
        autoCloseDuration: const Duration(seconds: 2),
      );
      await Navigator.push(
        event.context,
        MaterialPageRoute<void>(
          builder: (context) => const PopScope(
            canPop: false, // Chặn nút back và vuốt để quay lại
            child: CommonBottomNavigation(),
          ),
        ),
      );
    } else {
      final errorMessage = response.body['error'].toString();
      // Show Toast
      toastification.show(
        icon: Assets.icons.linear.svg.closeCircle.svg(
          colorFilter: const ColorFilter.mode(
            CommonColors.errorColor,
            BlendMode.srcIn,
          ),
        ),
        borderSide: const BorderSide(color: CommonColors.errorColor),
        type: ToastificationType.error,
        style: ToastificationStyle.flatColored,
        title: Text(errorMessage),
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  FutureOr<void> _onForgotPasswordButtonPressed(
    ForgotPasswordButtonPressed event,
    Emitter<LoginState> emit,
  ) {}
}
