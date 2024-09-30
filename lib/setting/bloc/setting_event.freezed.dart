// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingInitiated {}

/// @nodoc
abstract class $SettingInitiatedCopyWith<$Res> {
  factory $SettingInitiatedCopyWith(
          SettingInitiated value, $Res Function(SettingInitiated) then) =
      _$SettingInitiatedCopyWithImpl<$Res, SettingInitiated>;
}

/// @nodoc
class _$SettingInitiatedCopyWithImpl<$Res, $Val extends SettingInitiated>
    implements $SettingInitiatedCopyWith<$Res> {
  _$SettingInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingInitiated
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingInitiatedImplCopyWith<$Res> {
  factory _$$SettingInitiatedImplCopyWith(_$SettingInitiatedImpl value,
          $Res Function(_$SettingInitiatedImpl) then) =
      __$$SettingInitiatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingInitiatedImplCopyWithImpl<$Res>
    extends _$SettingInitiatedCopyWithImpl<$Res, _$SettingInitiatedImpl>
    implements _$$SettingInitiatedImplCopyWith<$Res> {
  __$$SettingInitiatedImplCopyWithImpl(_$SettingInitiatedImpl _value,
      $Res Function(_$SettingInitiatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingInitiated
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingInitiatedImpl implements _SettingInitiated {
  const _$SettingInitiatedImpl();

  @override
  String toString() {
    return 'SettingInitiated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingInitiatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SettingInitiated implements SettingInitiated {
  const factory _SettingInitiated() = _$SettingInitiatedImpl;
}

/// @nodoc
mixin _$LogoutPressed {
  VoidCallback get onLogoutSuccess => throw _privateConstructorUsedError;
  VoidCallback get onLogoutFailed => throw _privateConstructorUsedError;

  /// Create a copy of LogoutPressed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogoutPressedCopyWith<LogoutPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutPressedCopyWith<$Res> {
  factory $LogoutPressedCopyWith(
          LogoutPressed value, $Res Function(LogoutPressed) then) =
      _$LogoutPressedCopyWithImpl<$Res, LogoutPressed>;
  @useResult
  $Res call({VoidCallback onLogoutSuccess, VoidCallback onLogoutFailed});
}

/// @nodoc
class _$LogoutPressedCopyWithImpl<$Res, $Val extends LogoutPressed>
    implements $LogoutPressedCopyWith<$Res> {
  _$LogoutPressedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoutPressed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onLogoutSuccess = null,
    Object? onLogoutFailed = null,
  }) {
    return _then(_value.copyWith(
      onLogoutSuccess: null == onLogoutSuccess
          ? _value.onLogoutSuccess
          : onLogoutSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onLogoutFailed: null == onLogoutFailed
          ? _value.onLogoutFailed
          : onLogoutFailed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoutPressedImplCopyWith<$Res>
    implements $LogoutPressedCopyWith<$Res> {
  factory _$$LogoutPressedImplCopyWith(
          _$LogoutPressedImpl value, $Res Function(_$LogoutPressedImpl) then) =
      __$$LogoutPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoidCallback onLogoutSuccess, VoidCallback onLogoutFailed});
}

/// @nodoc
class __$$LogoutPressedImplCopyWithImpl<$Res>
    extends _$LogoutPressedCopyWithImpl<$Res, _$LogoutPressedImpl>
    implements _$$LogoutPressedImplCopyWith<$Res> {
  __$$LogoutPressedImplCopyWithImpl(
      _$LogoutPressedImpl _value, $Res Function(_$LogoutPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutPressed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onLogoutSuccess = null,
    Object? onLogoutFailed = null,
  }) {
    return _then(_$LogoutPressedImpl(
      onLogoutSuccess: null == onLogoutSuccess
          ? _value.onLogoutSuccess
          : onLogoutSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onLogoutFailed: null == onLogoutFailed
          ? _value.onLogoutFailed
          : onLogoutFailed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$LogoutPressedImpl implements _LogoutPressed {
  const _$LogoutPressedImpl(
      {required this.onLogoutSuccess, required this.onLogoutFailed});

  @override
  final VoidCallback onLogoutSuccess;
  @override
  final VoidCallback onLogoutFailed;

  @override
  String toString() {
    return 'LogoutPressed(onLogoutSuccess: $onLogoutSuccess, onLogoutFailed: $onLogoutFailed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutPressedImpl &&
            (identical(other.onLogoutSuccess, onLogoutSuccess) ||
                other.onLogoutSuccess == onLogoutSuccess) &&
            (identical(other.onLogoutFailed, onLogoutFailed) ||
                other.onLogoutFailed == onLogoutFailed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onLogoutSuccess, onLogoutFailed);

  /// Create a copy of LogoutPressed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutPressedImplCopyWith<_$LogoutPressedImpl> get copyWith =>
      __$$LogoutPressedImplCopyWithImpl<_$LogoutPressedImpl>(this, _$identity);
}

abstract class _LogoutPressed implements LogoutPressed {
  const factory _LogoutPressed(
      {required final VoidCallback onLogoutSuccess,
      required final VoidCallback onLogoutFailed}) = _$LogoutPressedImpl;

  @override
  VoidCallback get onLogoutSuccess;
  @override
  VoidCallback get onLogoutFailed;

  /// Create a copy of LogoutPressed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutPressedImplCopyWith<_$LogoutPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
