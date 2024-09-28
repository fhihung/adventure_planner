import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_generation_event.freezed.dart';

abstract class PlanGenerationEvent {
  const PlanGenerationEvent();
}

@freezed
class PlanGenerationInitiated extends PlanGenerationEvent with _$PlanGenerationInitiated {
  const factory PlanGenerationInitiated() = _PlanGenerationInitiated;
}

@freezed
class CurrentLocationPicked extends PlanGenerationEvent with _$CurrentLocationPicked {
  const factory CurrentLocationPicked(
    String currentLocation,
    String budget,
    String numPeople,
  ) = _CurrentLocationPicked;
}

@freezed
class LocationPicked extends PlanGenerationEvent with _$LocationPicked {
  const factory LocationPicked(
    List<String> locations,
  ) = _LocationPicked;
}

@freezed
class QuantityDaysPicked extends PlanGenerationEvent with _$QuantityDaysPicked {
  const factory QuantityDaysPicked(
    int days,
  ) = _QuantityDaysPicked;
}

@freezed
class TripTypePicked extends PlanGenerationEvent with _$TripTypePicked {
  const factory TripTypePicked(
    List<String> tripTypes,
  ) = _TripTypePicked;
}

@freezed
class PlanGeneratePressed extends PlanGenerationEvent with _$PlanGeneratePressed {
  const factory PlanGeneratePressed({required BuildContext context}) = _PlanGeneratePressed;
}
