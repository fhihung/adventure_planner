import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

abstract class HomeEvent {
  const HomeEvent();
}

@freezed
class HomeInitiated extends HomeEvent with _$HomeInitiated {
  const factory HomeInitiated() = _HomeInitiated;
}
