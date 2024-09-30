import 'package:adventure_planner/models/m_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false) bool isLoading,
    MUser? user,
  }) = _SettingState;
}
