// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_generation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlanGenerationState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<String> get selectedLocations => throw _privateConstructorUsedError;
  List<String> get selectedTripTypes => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;

  /// Create a copy of PlanGenerationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanGenerationStateCopyWith<PlanGenerationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanGenerationStateCopyWith<$Res> {
  factory $PlanGenerationStateCopyWith(
          PlanGenerationState value, $Res Function(PlanGenerationState) then) =
      _$PlanGenerationStateCopyWithImpl<$Res, PlanGenerationState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<String> selectedLocations,
      List<String> selectedTripTypes,
      int days});
}

/// @nodoc
class _$PlanGenerationStateCopyWithImpl<$Res, $Val extends PlanGenerationState>
    implements $PlanGenerationStateCopyWith<$Res> {
  _$PlanGenerationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanGenerationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedLocations = null,
    Object? selectedTripTypes = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedLocations: null == selectedLocations
          ? _value.selectedLocations
          : selectedLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedTripTypes: null == selectedTripTypes
          ? _value.selectedTripTypes
          : selectedTripTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanGenerationStateImplCopyWith<$Res>
    implements $PlanGenerationStateCopyWith<$Res> {
  factory _$$PlanGenerationStateImplCopyWith(_$PlanGenerationStateImpl value,
          $Res Function(_$PlanGenerationStateImpl) then) =
      __$$PlanGenerationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<String> selectedLocations,
      List<String> selectedTripTypes,
      int days});
}

/// @nodoc
class __$$PlanGenerationStateImplCopyWithImpl<$Res>
    extends _$PlanGenerationStateCopyWithImpl<$Res, _$PlanGenerationStateImpl>
    implements _$$PlanGenerationStateImplCopyWith<$Res> {
  __$$PlanGenerationStateImplCopyWithImpl(_$PlanGenerationStateImpl _value,
      $Res Function(_$PlanGenerationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanGenerationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedLocations = null,
    Object? selectedTripTypes = null,
    Object? days = null,
  }) {
    return _then(_$PlanGenerationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedLocations: null == selectedLocations
          ? _value._selectedLocations
          : selectedLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedTripTypes: null == selectedTripTypes
          ? _value._selectedTripTypes
          : selectedTripTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlanGenerationStateImpl implements _PlanGenerationState {
  const _$PlanGenerationStateImpl(
      {this.isLoading = false,
      final List<String> selectedLocations = const <String>[],
      final List<String> selectedTripTypes = const <String>[],
      this.days = 3})
      : _selectedLocations = selectedLocations,
        _selectedTripTypes = selectedTripTypes;

  @override
  @JsonKey()
  final bool isLoading;
  final List<String> _selectedLocations;
  @override
  @JsonKey()
  List<String> get selectedLocations {
    if (_selectedLocations is EqualUnmodifiableListView)
      return _selectedLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedLocations);
  }

  final List<String> _selectedTripTypes;
  @override
  @JsonKey()
  List<String> get selectedTripTypes {
    if (_selectedTripTypes is EqualUnmodifiableListView)
      return _selectedTripTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTripTypes);
  }

  @override
  @JsonKey()
  final int days;

  @override
  String toString() {
    return 'PlanGenerationState(isLoading: $isLoading, selectedLocations: $selectedLocations, selectedTripTypes: $selectedTripTypes, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanGenerationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._selectedLocations, _selectedLocations) &&
            const DeepCollectionEquality()
                .equals(other._selectedTripTypes, _selectedTripTypes) &&
            (identical(other.days, days) || other.days == days));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_selectedLocations),
      const DeepCollectionEquality().hash(_selectedTripTypes),
      days);

  /// Create a copy of PlanGenerationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanGenerationStateImplCopyWith<_$PlanGenerationStateImpl> get copyWith =>
      __$$PlanGenerationStateImplCopyWithImpl<_$PlanGenerationStateImpl>(
          this, _$identity);
}

abstract class _PlanGenerationState implements PlanGenerationState {
  const factory _PlanGenerationState(
      {final bool isLoading,
      final List<String> selectedLocations,
      final List<String> selectedTripTypes,
      final int days}) = _$PlanGenerationStateImpl;

  @override
  bool get isLoading;
  @override
  List<String> get selectedLocations;
  @override
  List<String> get selectedTripTypes;
  @override
  int get days;

  /// Create a copy of PlanGenerationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanGenerationStateImplCopyWith<_$PlanGenerationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
