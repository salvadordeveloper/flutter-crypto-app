// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'market_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketResponse _$MarketResponseFromJson(Map<String, dynamic> json) {
  return _MarketResponse.fromJson(json);
}

/// @nodoc
class _$MarketResponseTearOff {
  const _$MarketResponseTearOff();

  _MarketResponse call(
      {required List<Pair> result, required Allowance allowance}) {
    return _MarketResponse(
      result: result,
      allowance: allowance,
    );
  }

  MarketResponse fromJson(Map<String, Object> json) {
    return MarketResponse.fromJson(json);
  }
}

/// @nodoc
const $MarketResponse = _$MarketResponseTearOff();

/// @nodoc
mixin _$MarketResponse {
  List<Pair> get result => throw _privateConstructorUsedError;
  Allowance get allowance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketResponseCopyWith<MarketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketResponseCopyWith<$Res> {
  factory $MarketResponseCopyWith(
          MarketResponse value, $Res Function(MarketResponse) then) =
      _$MarketResponseCopyWithImpl<$Res>;
  $Res call({List<Pair> result, Allowance allowance});

  $AllowanceCopyWith<$Res> get allowance;
}

/// @nodoc
class _$MarketResponseCopyWithImpl<$Res>
    implements $MarketResponseCopyWith<$Res> {
  _$MarketResponseCopyWithImpl(this._value, this._then);

  final MarketResponse _value;
  // ignore: unused_field
  final $Res Function(MarketResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? allowance = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Pair>,
      allowance: allowance == freezed
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as Allowance,
    ));
  }

  @override
  $AllowanceCopyWith<$Res> get allowance {
    return $AllowanceCopyWith<$Res>(_value.allowance, (value) {
      return _then(_value.copyWith(allowance: value));
    });
  }
}

/// @nodoc
abstract class _$MarketResponseCopyWith<$Res>
    implements $MarketResponseCopyWith<$Res> {
  factory _$MarketResponseCopyWith(
          _MarketResponse value, $Res Function(_MarketResponse) then) =
      __$MarketResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Pair> result, Allowance allowance});

  @override
  $AllowanceCopyWith<$Res> get allowance;
}

/// @nodoc
class __$MarketResponseCopyWithImpl<$Res>
    extends _$MarketResponseCopyWithImpl<$Res>
    implements _$MarketResponseCopyWith<$Res> {
  __$MarketResponseCopyWithImpl(
      _MarketResponse _value, $Res Function(_MarketResponse) _then)
      : super(_value, (v) => _then(v as _MarketResponse));

  @override
  _MarketResponse get _value => super._value as _MarketResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? allowance = freezed,
  }) {
    return _then(_MarketResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Pair>,
      allowance: allowance == freezed
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as Allowance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketResponse implements _MarketResponse {
  const _$_MarketResponse({required this.result, required this.allowance});

  factory _$_MarketResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MarketResponseFromJson(json);

  @override
  final List<Pair> result;
  @override
  final Allowance allowance;

  @override
  String toString() {
    return 'MarketResponse(result: $result, allowance: $allowance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarketResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.allowance, allowance) ||
                const DeepCollectionEquality()
                    .equals(other.allowance, allowance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(allowance);

  @JsonKey(ignore: true)
  @override
  _$MarketResponseCopyWith<_MarketResponse> get copyWith =>
      __$MarketResponseCopyWithImpl<_MarketResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MarketResponseToJson(this);
  }
}

abstract class _MarketResponse implements MarketResponse {
  const factory _MarketResponse(
      {required List<Pair> result,
      required Allowance allowance}) = _$_MarketResponse;

  factory _MarketResponse.fromJson(Map<String, dynamic> json) =
      _$_MarketResponse.fromJson;

  @override
  List<Pair> get result => throw _privateConstructorUsedError;
  @override
  Allowance get allowance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MarketResponseCopyWith<_MarketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
