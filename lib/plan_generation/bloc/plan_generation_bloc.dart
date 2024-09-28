import 'dart:async';

import 'package:adventure_planner/plan_generation/bloc/plan_generation_event.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_state.dart';
import 'package:adventure_planner/plan_generation/controller/plan_generation_controller.dart';
import 'package:bloc/bloc.dart';
import 'package:go_router/go_router.dart';

class PlanGenerationBloc extends Bloc<PlanGenerationEvent, PlanGenerationState> {
  PlanGenerationBloc() : super(const PlanGenerationState()) {
    on<PlanGenerationInitiated>(
      _onPlanGenerationInitiated,
    );
    on<CurrentLocationPicked>(
      _onCurrentLocationPicked,
    );
    on<LocationPicked>(
      _onLocationPicked,
    );
    on<QuantityDaysPicked>(
      _onQuantityDaysPicked,
    );
    on<TripTypePicked>(
      _onTripTypePicked,
    );
    on<PlanGeneratePressed>(
      _onPlanGeneratePressed,
    );
  }

  FutureOr<void> _onPlanGenerationInitiated(
    PlanGenerationInitiated event,
    Emitter<PlanGenerationState> emit,
  ) {}

  FutureOr<void> _onLocationPicked(
    LocationPicked event,
    Emitter<PlanGenerationState> emit,
  ) {
    emit(state.copyWith(selectedLocations: event.locations));
  }

  FutureOr<void> _onCurrentLocationPicked(
    CurrentLocationPicked event,
    Emitter<PlanGenerationState> emit,
  ) {
    emit(
      state.copyWith(
        currentLocation: event.currentLocation,
        budget: event.budget,
        numPeople: event.numPeople,
      ),
    );
  }

  FutureOr<void> _onQuantityDaysPicked(
    QuantityDaysPicked event,
    Emitter<PlanGenerationState> emit,
  ) {
    emit(state.copyWith(days: event.days));
  }

  FutureOr<void> _onTripTypePicked(
    TripTypePicked event,
    Emitter<PlanGenerationState> emit,
  ) {
    emit(state.copyWith(selectedTripTypes: event.tripTypes));
  }

  final PlanGenerationController generationController = PlanGenerationController();

  Future<void> _onPlanGeneratePressed(
    PlanGeneratePressed event,
    Emitter<PlanGenerationState> emit,
  ) async {
    emit(state.copyWith(isGenerating: true));
    event.context.go('/intro/location/duration/trip_type/confirm/generate');

    final response = await generationController.suggest(
      currentLocation: state.currentLocation,
      location: state.selectedLocations,
      numPeople: state.numPeople,
      budget: state.budget,
      duration: state.days,
      type: state.selectedTripTypes,
    );
    emit(state.copyWith(isGenerating: false, response: response));
    if (response.statusCode == 200) {
      emit(state.copyWith(responseContent: response.body['suggestion'] as Map<String, dynamic>));
      event.context.go('/intro/location/duration/trip_type/confirm/complete');
    }
  }
}
