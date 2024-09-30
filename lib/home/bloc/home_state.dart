import 'package:adventure_planner/models/m_popular_suggestion.dart';
import 'package:adventure_planner/models/m_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    MUser? user,
    List<MPopularSuggestion>? popularSuggestion,
  }) = _HomeState;
}
