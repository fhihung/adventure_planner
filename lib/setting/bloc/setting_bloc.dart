import 'dart:async';

import 'package:adventure_planner/home/controller/home_controller.dart';
import 'package:adventure_planner/setting/bloc/setting_event.dart';
import 'package:adventure_planner/setting/bloc/setting_state.dart';
import 'package:adventure_planner/setting/controller/setting_controller.dart';
import 'package:adventure_planner/utils/local_storage/storage_service.dart';
import 'package:bloc/bloc.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(const SettingState()) {
    on<SettingInitiated>(
      _onSettingInitiated,
    );
    on<LogoutPressed>(
      _onLogoutPressed,
    );
  }

  final storageService = StorageService();
  final homeController = HomeController();
  final settingController = SettingController();

  FutureOr<void> _onSettingInitiated(
    SettingInitiated event,
    Emitter<SettingState> emit,
  ) async {
    final token = await storageService.getToken();
    final user = await homeController.getUser(token ?? '');
    emit(
      state.copyWith(
        user: user,
      ),
    );
  }

  FutureOr<void> _onLogoutPressed(
    LogoutPressed event,
    Emitter<SettingState> emit,
  ) async {
    final token = await storageService.getToken();
    final response = await settingController.logOut(token ?? '');
    if (response.statusCode == 200) {
      event.onLogoutSuccess();
      await storageService.clear();
    } else {
      event.onLogoutFailed();
      await storageService.clear();
    }
  }
}
