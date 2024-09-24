import 'dart:async';

import 'package:adventure_planner/plan_generation/bloc/plan_generation_event.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_state.dart';
import 'package:bloc/bloc.dart';

class PlanGenerationBloc extends Bloc<PlanGenerationEvent, PlanGenerationState> {
  PlanGenerationBloc() : super(const PlanGenerationState()) {
    on<PlanGenerationInitiated>(
      _onPlanGenerationInitiated,
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
}
