import 'dart:async';

import 'package:adventure_planner/home/bloc/home_event.dart';
import 'package:adventure_planner/home/bloc/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeInitiated>(
      _onHomeInitiated,
    );
  }

  FutureOr<void> _onHomeInitiated(
    HomeInitiated event,
    Emitter<HomeState> emit,
  ) {}
}
