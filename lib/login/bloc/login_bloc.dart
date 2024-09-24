import 'dart:async';

import 'package:adventure_planner/login/bloc/login_event.dart';
import 'package:adventure_planner/login/bloc/login_state.dart';
import 'package:adventure_planner/login/controller/login_controller.dart';
import 'package:adventure_planner/utils/local_storage/storage_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      await Fluttertoast.showToast(
        msg: 'Login Successful',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16,
      );
      // await Navigator.pushReplacement(
      //   event.context,
      //   MaterialPageRoute<void>(
      //     builder: (context) => CommonBottomNavigation(),
      //   ),
      // );
    } else {
      final errorMessage = response.body['error'].toString();
      // Show Toast
      await Fluttertoast.showToast(
        msg: errorMessage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  }

  FutureOr<void> _onForgotPasswordButtonPressed(
    ForgotPasswordButtonPressed event,
    Emitter<LoginState> emit,
  ) {}
}
