import 'dart:async';

import 'package:adventure_planner/home/bloc/home_event.dart';
import 'package:adventure_planner/home/bloc/home_state.dart';
import 'package:adventure_planner/home/controller/home_controller.dart';
import 'package:adventure_planner/utils/local_storage/storage_service.dart';
import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeInitiated>(
      _onHomeInitiated,
    );
  }

  final homeController = HomeController();
  final storageService = StorageService();

  FutureOr<void> _onHomeInitiated(
    HomeInitiated event,
    Emitter<HomeState> emit,
  ) async {
    final getToken = await storageService.getToken();
    final user = await homeController.getUser(getToken ?? '');
    emit(
      state.copyWith(
        user: user,
      ),
    );
  }
}
