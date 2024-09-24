// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_generation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlanGenerationInitiated {}

/// @nodoc
abstract class $PlanGenerationInitiatedCopyWith<$Res> {
  factory $PlanGenerationInitiatedCopyWith(PlanGenerationInitiated value,
          $Res Function(PlanGenerationInitiated) then) =
      _$PlanGenerationInitiatedCopyWithImpl<$Res, PlanGenerationInitiated>;
}

/// @nodoc
class _$PlanGenerationInitiatedCopyWithImpl<$Res,
        $Val extends PlanGenerationInitiated>
    implements $PlanGenerationInitiatedCopyWith<$Res> {
  _$PlanGenerationInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanGenerationInitiated
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlanGenerationInitiatedImplCopyWith<$Res> {
  factory _$$PlanGenerationInitiatedImplCopyWith(
          _$PlanGenerationInitiatedImpl value,
          $Res Function(_$PlanGenerationInitiatedImpl) then) =
      __$$PlanGenerationInitiatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlanGenerationInitiatedImplCopyWithImpl<$Res>
    extends _$PlanGenerationInitiatedCopyWithImpl<$Res,
        _$PlanGenerationInitiatedImpl>
    implements _$$PlanGenerationInitiatedImplCopyWith<$Res> {
  __$$PlanGenerationInitiatedImplCopyWithImpl(
      _$PlanGenerationInitiatedImpl _value,
      $Res Function(_$PlanGenerationInitiatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanGenerationInitiated
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlanGenerationInitiatedImpl implements _PlanGenerationInitiated {
  const _$PlanGenerationInitiatedImpl();

  @override
  String toString() {
    return 'PlanGenerationInitiated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanGenerationInitiatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _PlanGenerationInitiated implements PlanGenerationInitiated {
  const factory _PlanGenerationInitiated() = _$PlanGenerationInitiatedImpl;
}

/// @nodoc
mixin _$LocationPicked {
  List<String> get locations => throw _privateConstructorUsedError;

  /// Create a copy of LocationPicked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationPickedCopyWith<LocationPicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPickedCopyWith<$Res> {
  factory $LocationPickedCopyWith(
          LocationPicked value, $Res Function(LocationPicked) then) =
      _$LocationPickedCopyWithImpl<$Res, LocationPicked>;
  @useResult
  $Res call({List<String> locations});
}

/// @nodoc
class _$LocationPickedCopyWithImpl<$Res, $Val extends LocationPicked>
    implements $LocationPickedCopyWith<$Res> {
  _$LocationPickedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationPicked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
  }) {
    return _then(_value.copyWith(
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationPickedImplCopyWith<$Res>
    implements $LocationPickedCopyWith<$Res> {
  factory _$$LocationPickedImplCopyWith(_$LocationPickedImpl value,
          $Res Function(_$LocationPickedImpl) then) =
      __$$LocationPickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> locations});
}

/// @nodoc
class __$$LocationPickedImplCopyWithImpl<$Res>
    extends _$LocationPickedCopyWithImpl<$Res, _$LocationPickedImpl>
    implements _$$LocationPickedImplCopyWith<$Res> {
  __$$LocationPickedImplCopyWithImpl(
      _$LocationPickedImpl _value, $Res Function(_$LocationPickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationPicked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
  }) {
    return _then(_$LocationPickedImpl(
      null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LocationPickedImpl implements _LocationPicked {
  const _$LocationPickedImpl(final List<String> locations)
      : _locations = locations;

  final List<String> _locations;
  @override
  List<String> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  String toString() {
    return 'LocationPicked(locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPickedImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_locations));

  /// Create a copy of LocationPicked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPickedImplCopyWith<_$LocationPickedImpl> get copyWith =>
      __$$LocationPickedImplCopyWithImpl<_$LocationPickedImpl>(
          this, _$identity);
}

abstract class _LocationPicked implements LocationPicked {
  const factory _LocationPicked(final List<String> locations) =
      _$LocationPickedImpl;

  @override
  List<String> get locations;

  /// Create a copy of LocationPicked
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationPickedImplCopyWith<_$LocationPickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuantityDaysPicked {
  int get days => throw _privateConstructorUsedError;

  /// Create a copy of QuantityDaysPicked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuantityDaysPickedCopyWith<QuantityDaysPicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityDaysPickedCopyWith<$Res> {
  factory $QuantityDaysPickedCopyWith(
          QuantityDaysPicked value, $Res Function(QuantityDaysPicked) then) =
      _$QuantityDaysPickedCopyWithImpl<$Res, QuantityDaysPicked>;
  @useResult
  $Res call({int days});
}

/// @nodoc
class _$QuantityDaysPickedCopyWithImpl<$Res, $Val extends QuantityDaysPicked>
    implements $QuantityDaysPickedCopyWith<$Res> {
  _$QuantityDaysPickedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuantityDaysPicked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuantityDaysPickedImplCopyWith<$Res>
    implements $QuantityDaysPickedCopyWith<$Res> {
  factory _$$QuantityDaysPickedImplCopyWith(_$QuantityDaysPickedImpl value,
          $Res Function(_$QuantityDaysPickedImpl) then) =
      __$$QuantityDaysPickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int days});
}

/// @nodoc
class __$$QuantityDaysPickedImplCopyWithImpl<$Res>
    extends _$QuantityDaysPickedCopyWithImpl<$Res, _$QuantityDaysPickedImpl>
    implements _$$QuantityDaysPickedImplCopyWith<$Res> {
  __$$QuantityDaysPickedImplCopyWithImpl(_$QuantityDaysPickedImpl _value,
      $Res Function(_$QuantityDaysPickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuantityDaysPicked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$QuantityDaysPickedImpl(
      null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuantityDaysPickedImpl implements _QuantityDaysPicked {
  const _$QuantityDaysPickedImpl(this.days);

  @override
  final int days;

  @override
  String toString() {
    return 'QuantityDaysPicked(days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityDaysPickedImpl &&
            (identical(other.days, days) || other.days == days));
  }

  @override
  int get hashCode => Object.hash(runtimeType, days);

  /// Create a copy of QuantityDaysPicked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityDaysPickedImplCopyWith<_$QuantityDaysPickedImpl> get copyWith =>
      __$$QuantityDaysPickedImplCopyWithImpl<_$QuantityDaysPickedImpl>(
          this, _$identity);
}

abstract class _QuantityDaysPicked implements QuantityDaysPicked {
  const factory _QuantityDaysPicked(final int days) = _$QuantityDaysPickedImpl;

  @override
  int get days;

  /// Create a copy of QuantityDaysPicked
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuantityDaysPickedImplCopyWith<_$QuantityDaysPickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripTypePicked {
  List<String> get tripTypes => throw _privateConstructorUsedError;

  /// Create a copy of TripTypePicked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripTypePickedCopyWith<TripTypePicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripTypePickedCopyWith<$Res> {
  factory $TripTypePickedCopyWith(
          TripTypePicked value, $Res Function(TripTypePicked) then) =
      _$TripTypePickedCopyWithImpl<$Res, TripTypePicked>;
  @useResult
  $Res call({List<String> tripTypes});
}

/// @nodoc
class _$TripTypePickedCopyWithImpl<$Res, $Val extends TripTypePicked>
    implements $TripTypePickedCopyWith<$Res> {
  _$TripTypePickedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripTypePicked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripTypes = null,
  }) {
    return _then(_value.copyWith(
      tripTypes: null == tripTypes
          ? _value.tripTypes
          : tripTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripTypePickedImplCopyWith<$Res>
    implements $TripTypePickedCopyWith<$Res> {
  factory _$$TripTypePickedImplCopyWith(_$TripTypePickedImpl value,
          $Res Function(_$TripTypePickedImpl) then) =
      __$$TripTypePickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> tripTypes});
}

/// @nodoc
class __$$TripTypePickedImplCopyWithImpl<$Res>
    extends _$TripTypePickedCopyWithImpl<$Res, _$TripTypePickedImpl>
    implements _$$TripTypePickedImplCopyWith<$Res> {
  __$$TripTypePickedImplCopyWithImpl(
      _$TripTypePickedImpl _value, $Res Function(_$TripTypePickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripTypePicked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripTypes = null,
  }) {
    return _then(_$TripTypePickedImpl(
      null == tripTypes
          ? _value._tripTypes
          : tripTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TripTypePickedImpl implements _TripTypePicked {
  const _$TripTypePickedImpl(final List<String> tripTypes)
      : _tripTypes = tripTypes;

  final List<String> _tripTypes;
  @override
  List<String> get tripTypes {
    if (_tripTypes is EqualUnmodifiableListView) return _tripTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripTypes);
  }

  @override
  String toString() {
    return 'TripTypePicked(tripTypes: $tripTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripTypePickedImpl &&
            const DeepCollectionEquality()
                .equals(other._tripTypes, _tripTypes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tripTypes));

  /// Create a copy of TripTypePicked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripTypePickedImplCopyWith<_$TripTypePickedImpl> get copyWith =>
      __$$TripTypePickedImplCopyWithImpl<_$TripTypePickedImpl>(
          this, _$identity);
}

abstract class _TripTypePicked implements TripTypePicked {
  const factory _TripTypePicked(final List<String> tripTypes) =
      _$TripTypePickedImpl;

  @override
  List<String> get tripTypes;

  /// Create a copy of TripTypePicked
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripTypePickedImplCopyWith<_$TripTypePickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
