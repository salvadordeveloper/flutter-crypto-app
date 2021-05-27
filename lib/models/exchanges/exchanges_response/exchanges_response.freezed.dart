// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exchanges_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangesResponse _$ExchangesResponseFromJson(Map<String, dynamic> json) {
  return _ExchangesResponse.fromJson(json);
}

/// @nodoc
class _$ExchangesResponseTearOff {
  const _$ExchangesResponseTearOff();

  _ExchangesResponse call({required List<Exchange> result}) {
    return _ExchangesResponse(
      result: result,
    );
  }

  ExchangesResponse fromJson(Map<String, Object> json) {
    return ExchangesResponse.fromJson(json);
  }
}

/// @nodoc
const $ExchangesResponse = _$ExchangesResponseTearOff();

/// @nodoc
mixin _$ExchangesResponse {
  List<Exchange> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangesResponseCopyWith<ExchangesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangesResponseCopyWith<$Res> {
  factory $ExchangesResponseCopyWith(
          ExchangesResponse value, $Res Function(ExchangesResponse) then) =
      _$ExchangesResponseCopyWithImpl<$Res>;
  $Res call({List<Exchange> result});
}

/// @nodoc
class _$ExchangesResponseCopyWithImpl<$Res>
    implements $ExchangesResponseCopyWith<$Res> {
  _$ExchangesResponseCopyWithImpl(this._value, this._then);

  final ExchangesResponse _value;
  // ignore: unused_field
  final $Res Function(ExchangesResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Exchange>,
    ));
  }
}

/// @nodoc
abstract class _$ExchangesResponseCopyWith<$Res>
    implements $ExchangesResponseCopyWith<$Res> {
  factory _$ExchangesResponseCopyWith(
          _ExchangesResponse value, $Res Function(_ExchangesResponse) then) =
      __$ExchangesResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Exchange> result});
}

/// @nodoc
class __$ExchangesResponseCopyWithImpl<$Res>
    extends _$ExchangesResponseCopyWithImpl<$Res>
    implements _$ExchangesResponseCopyWith<$Res> {
  __$ExchangesResponseCopyWithImpl(
      _ExchangesResponse _value, $Res Function(_ExchangesResponse) _then)
      : super(_value, (v) => _then(v as _ExchangesResponse));

  @override
  _ExchangesResponse get _value => super._value as _ExchangesResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_ExchangesResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Exchange>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangesResponse implements _ExchangesResponse {
  const _$_ExchangesResponse({required this.result});

  factory _$_ExchangesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ExchangesResponseFromJson(json);

  @override
  final List<Exchange> result;

  @override
  String toString() {
    return 'ExchangesResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExchangesResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$ExchangesResponseCopyWith<_ExchangesResponse> get copyWith =>
      __$ExchangesResponseCopyWithImpl<_ExchangesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExchangesResponseToJson(this);
  }
}

abstract class _ExchangesResponse implements ExchangesResponse {
  const factory _ExchangesResponse({required List<Exchange> result}) =
      _$_ExchangesResponse;

  factory _ExchangesResponse.fromJson(Map<String, dynamic> json) =
      _$_ExchangesResponse.fromJson;

  @override
  List<Exchange> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExchangesResponseCopyWith<_ExchangesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
