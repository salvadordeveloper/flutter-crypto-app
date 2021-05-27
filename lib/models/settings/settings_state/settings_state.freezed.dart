// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsStateInitial initial() {
    return const _SettingsStateInitial();
  }

  _SettingsStateLoading loading() {
    return const _SettingsStateLoading();
  }

  _SetttingsStateData data({required SettingsDetails details}) {
    return _SetttingsStateData(
      details: details,
    );
  }

  _SettingsStateError error({String? error}) {
    return _SettingsStateError(
      error: error,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingsDetails details) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingsDetails details)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsStateInitial value) initial,
    required TResult Function(_SettingsStateLoading value) loading,
    required TResult Function(_SetttingsStateData value) data,
    required TResult Function(_SettingsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsStateInitial value)? initial,
    TResult Function(_SettingsStateLoading value)? loading,
    TResult Function(_SetttingsStateData value)? data,
    TResult Function(_SettingsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class _$SettingsStateInitialCopyWith<$Res> {
  factory _$SettingsStateInitialCopyWith(_SettingsStateInitial value,
          $Res Function(_SettingsStateInitial) then) =
      __$SettingsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SettingsStateInitialCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateInitialCopyWith<$Res> {
  __$SettingsStateInitialCopyWithImpl(
      _SettingsStateInitial _value, $Res Function(_SettingsStateInitial) _then)
      : super(_value, (v) => _then(v as _SettingsStateInitial));

  @override
  _SettingsStateInitial get _value => super._value as _SettingsStateInitial;
}

/// @nodoc

class _$_SettingsStateInitial implements _SettingsStateInitial {
  const _$_SettingsStateInitial();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SettingsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingsDetails details) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingsDetails details)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsStateInitial value) initial,
    required TResult Function(_SettingsStateLoading value) loading,
    required TResult Function(_SetttingsStateData value) data,
    required TResult Function(_SettingsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsStateInitial value)? initial,
    TResult Function(_SettingsStateLoading value)? loading,
    TResult Function(_SetttingsStateData value)? data,
    TResult Function(_SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SettingsStateInitial implements SettingsState {
  const factory _SettingsStateInitial() = _$_SettingsStateInitial;
}

/// @nodoc
abstract class _$SettingsStateLoadingCopyWith<$Res> {
  factory _$SettingsStateLoadingCopyWith(_SettingsStateLoading value,
          $Res Function(_SettingsStateLoading) then) =
      __$SettingsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SettingsStateLoadingCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateLoadingCopyWith<$Res> {
  __$SettingsStateLoadingCopyWithImpl(
      _SettingsStateLoading _value, $Res Function(_SettingsStateLoading) _then)
      : super(_value, (v) => _then(v as _SettingsStateLoading));

  @override
  _SettingsStateLoading get _value => super._value as _SettingsStateLoading;
}

/// @nodoc

class _$_SettingsStateLoading implements _SettingsStateLoading {
  const _$_SettingsStateLoading();

  @override
  String toString() {
    return 'SettingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SettingsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingsDetails details) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingsDetails details)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsStateInitial value) initial,
    required TResult Function(_SettingsStateLoading value) loading,
    required TResult Function(_SetttingsStateData value) data,
    required TResult Function(_SettingsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsStateInitial value)? initial,
    TResult Function(_SettingsStateLoading value)? loading,
    TResult Function(_SetttingsStateData value)? data,
    TResult Function(_SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SettingsStateLoading implements SettingsState {
  const factory _SettingsStateLoading() = _$_SettingsStateLoading;
}

/// @nodoc
abstract class _$SetttingsStateDataCopyWith<$Res> {
  factory _$SetttingsStateDataCopyWith(
          _SetttingsStateData value, $Res Function(_SetttingsStateData) then) =
      __$SetttingsStateDataCopyWithImpl<$Res>;
  $Res call({SettingsDetails details});

  $SettingsDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$SetttingsStateDataCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SetttingsStateDataCopyWith<$Res> {
  __$SetttingsStateDataCopyWithImpl(
      _SetttingsStateData _value, $Res Function(_SetttingsStateData) _then)
      : super(_value, (v) => _then(v as _SetttingsStateData));

  @override
  _SetttingsStateData get _value => super._value as _SetttingsStateData;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_SetttingsStateData(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as SettingsDetails,
    ));
  }

  @override
  $SettingsDetailsCopyWith<$Res> get details {
    return $SettingsDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$_SetttingsStateData implements _SetttingsStateData {
  const _$_SetttingsStateData({required this.details});

  @override
  final SettingsDetails details;

  @override
  String toString() {
    return 'SettingsState.data(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetttingsStateData &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$SetttingsStateDataCopyWith<_SetttingsStateData> get copyWith =>
      __$SetttingsStateDataCopyWithImpl<_SetttingsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingsDetails details) data,
    required TResult Function(String? error) error,
  }) {
    return data(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingsDetails details)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsStateInitial value) initial,
    required TResult Function(_SettingsStateLoading value) loading,
    required TResult Function(_SetttingsStateData value) data,
    required TResult Function(_SettingsStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsStateInitial value)? initial,
    TResult Function(_SettingsStateLoading value)? loading,
    TResult Function(_SetttingsStateData value)? data,
    TResult Function(_SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _SetttingsStateData implements SettingsState {
  const factory _SetttingsStateData({required SettingsDetails details}) =
      _$_SetttingsStateData;

  SettingsDetails get details => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetttingsStateDataCopyWith<_SetttingsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SettingsStateErrorCopyWith<$Res> {
  factory _$SettingsStateErrorCopyWith(
          _SettingsStateError value, $Res Function(_SettingsStateError) then) =
      __$SettingsStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$SettingsStateErrorCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateErrorCopyWith<$Res> {
  __$SettingsStateErrorCopyWithImpl(
      _SettingsStateError _value, $Res Function(_SettingsStateError) _then)
      : super(_value, (v) => _then(v as _SettingsStateError));

  @override
  _SettingsStateError get _value => super._value as _SettingsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_SettingsStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SettingsStateError implements _SettingsStateError {
  const _$_SettingsStateError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'SettingsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$SettingsStateErrorCopyWith<_SettingsStateError> get copyWith =>
      __$SettingsStateErrorCopyWithImpl<_SettingsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingsDetails details) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingsDetails details)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsStateInitial value) initial,
    required TResult Function(_SettingsStateLoading value) loading,
    required TResult Function(_SetttingsStateData value) data,
    required TResult Function(_SettingsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsStateInitial value)? initial,
    TResult Function(_SettingsStateLoading value)? loading,
    TResult Function(_SetttingsStateData value)? data,
    TResult Function(_SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SettingsStateError implements SettingsState {
  const factory _SettingsStateError({String? error}) = _$_SettingsStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SettingsStateErrorCopyWith<_SettingsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
