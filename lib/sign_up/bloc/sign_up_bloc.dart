import 'dart:async';

import 'package:adventure_planner/common/modal_sheet/show_modal_sheet.dart';
import 'package:adventure_planner/login/widgets/login_form.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/sign_up/bloc/sign_up_event.dart';
import 'package:adventure_planner/sign_up/bloc/sign_up_state.dart';
import 'package:adventure_planner/sign_up/controller/sign_up_controller.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<SignUpInitiated>(
      _onSignUpInitiated,
    );
    on<SignUpSubmitted>(
      _onSignUpSubmitted,
    );
  }

  final signUpController = SignUpController();

  FutureOr<void> _onSignUpInitiated(
    SignUpInitiated event,
    Emitter<SignUpState> emit,
  ) {}

  Future<void> _onSignUpSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final response = await signUpController.register(
      name: event.name,
      email: event.email,
      password: event.password,
      passwordConfirmation: event.passwordConfirmation,
    );
    emit(state.copyWith(isLoading: false));
    if (response.statusCode == 201 && response.body['token'] != null) {
      toastification
        ..show(
          type: ToastificationType.success,
          style: ToastificationStyle.flatColored,
          title: const Text('Login successfully'),
          autoCloseDuration: const Duration(seconds: 2),
        )
        ..show(
          type: ToastificationType.success,
          style: ToastificationStyle.flatColored,
          title: const Text('Login now'),
          callbacks: ToastificationCallbacks(
            onTap: (value) {
              // Navigate to login screen
              Navigator.pop(event.context);
              CommonModalSheet.show(
                event.context,
                child: LoginForm(),
                isFullScreen: false,
              );
            },
          ),
          autoCloseDuration: const Duration(seconds: 2),
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
}
