import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/m_response.dart';

part 'plan_generation_state.freezed.dart';

@freezed
class PlanGenerationState with _$PlanGenerationState {
  const factory PlanGenerationState({
    @Default(false) bool isLoading,
    @Default(false) bool isGenerating,
    @Default(<String>[]) List<String> selectedLocations,
    @Default(<String>[]) List<String> selectedTripTypes,
    @Default(3) int days,
    @Default('') String budget,
    @Default('') String currentLocation,
    @Default('') String numPeople,
    @Default('') String model,
    MResponse? response,
    Map<String, dynamic>? responseContent,
  }) = _PlanGenerationState;
}
