import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_generation_state.freezed.dart';

@freezed
class PlanGenerationState with _$PlanGenerationState {
  const factory PlanGenerationState({
    @Default(false) bool isLoading,
    @Default(<String>[]) List<String> selectedLocations,
    @Default(<String>[]) List<String> selectedTripTypes,
    @Default(3) int days,
  }) = _PlanGenerationState;
}
