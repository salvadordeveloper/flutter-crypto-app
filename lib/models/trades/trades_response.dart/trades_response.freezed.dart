// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'trades_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TradesResponseTearOff {
  const _$TradesResponseTearOff();

  _TradesResponse call({List<Trade>? result}) {
    return _TradesResponse(
      result: result,
    );
  }
}

/// @nodoc
const $TradesResponse = _$TradesResponseTearOff();

/// @nodoc
mixin _$TradesResponse {
  List<Trade>? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TradesResponseCopyWith<TradesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradesResponseCopyWith<$Res> {
  factory $TradesResponseCopyWith(
          TradesResponse value, $Res Function(TradesResponse) then) =
      _$TradesResponseCopyWithImpl<$Res>;
  $Res call({List<Trade>? result});
}

/// @nodoc
class _$TradesResponseCopyWithImpl<$Res>
    implements $TradesResponseCopyWith<$Res> {
  _$TradesResponseCopyWithImpl(this._value, this._then);

  final TradesResponse _value;
  // ignore: unused_field
  final $Res Function(TradesResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Trade>?,
    ));
  }
}

/// @nodoc
abstract class _$TradesResponseCopyWith<$Res>
    implements $TradesResponseCopyWith<$Res> {
  factory _$TradesResponseCopyWith(
          _TradesResponse value, $Res Function(_TradesResponse) then) =
      __$TradesResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Trade>? result});
}

/// @nodoc
class __$TradesResponseCopyWithImpl<$Res>
    extends _$TradesResponseCopyWithImpl<$Res>
    implements _$TradesResponseCopyWith<$Res> {
  __$TradesResponseCopyWithImpl(
      _TradesResponse _value, $Res Function(_TradesResponse) _then)
      : super(_value, (v) => _then(v as _TradesResponse));

  @override
  _TradesResponse get _value => super._value as _TradesResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_TradesResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Trade>?,
    ));
  }
}

/// @nodoc

class _$_TradesResponse implements _TradesResponse {
  const _$_TradesResponse({this.result});

  @override
  final List<Trade>? result;

  @override
  String toString() {
    return 'TradesResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TradesResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$TradesResponseCopyWith<_TradesResponse> get copyWith =>
      __$TradesResponseCopyWithImpl<_TradesResponse>(this, _$identity);
}

abstract class _TradesResponse implements TradesResponse {
  const factory _TradesResponse({List<Trade>? result}) = _$_TradesResponse;

  @override
  List<Trade>? get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TradesResponseCopyWith<_TradesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
