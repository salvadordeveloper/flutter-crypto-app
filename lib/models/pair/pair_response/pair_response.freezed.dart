// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pair_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PairResponse _$PairResponseFromJson(Map<String, dynamic> json) {
  return _PairResponse.fromJson(json);
}

/// @nodoc
class _$PairResponseTearOff {
  const _$PairResponseTearOff();

  _PairResponse call(PairSummary result, Allowance allowance) {
    return _PairResponse(
      result,
      allowance,
    );
  }

  PairResponse fromJson(Map<String, Object> json) {
    return PairResponse.fromJson(json);
  }
}

/// @nodoc
const $PairResponse = _$PairResponseTearOff();

/// @nodoc
mixin _$PairResponse {
  PairSummary get result => throw _privateConstructorUsedError;
  Allowance get allowance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PairResponseCopyWith<PairResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairResponseCopyWith<$Res> {
  factory $PairResponseCopyWith(
          PairResponse value, $Res Function(PairResponse) then) =
      _$PairResponseCopyWithImpl<$Res>;
  $Res call({PairSummary result, Allowance allowance});

  $PairSummaryCopyWith<$Res> get result;
  $AllowanceCopyWith<$Res> get allowance;
}

/// @nodoc
class _$PairResponseCopyWithImpl<$Res> implements $PairResponseCopyWith<$Res> {
  _$PairResponseCopyWithImpl(this._value, this._then);

  final PairResponse _value;
  // ignore: unused_field
  final $Res Function(PairResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? allowance = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PairSummary,
      allowance: allowance == freezed
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as Allowance,
    ));
  }

  @override
  $PairSummaryCopyWith<$Res> get result {
    return $PairSummaryCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }

  @override
  $AllowanceCopyWith<$Res> get allowance {
    return $AllowanceCopyWith<$Res>(_value.allowance, (value) {
      return _then(_value.copyWith(allowance: value));
    });
  }
}

/// @nodoc
abstract class _$PairResponseCopyWith<$Res>
    implements $PairResponseCopyWith<$Res> {
  factory _$PairResponseCopyWith(
          _PairResponse value, $Res Function(_PairResponse) then) =
      __$PairResponseCopyWithImpl<$Res>;
  @override
  $Res call({PairSummary result, Allowance allowance});

  @override
  $PairSummaryCopyWith<$Res> get result;
  @override
  $AllowanceCopyWith<$Res> get allowance;
}

/// @nodoc
class __$PairResponseCopyWithImpl<$Res> extends _$PairResponseCopyWithImpl<$Res>
    implements _$PairResponseCopyWith<$Res> {
  __$PairResponseCopyWithImpl(
      _PairResponse _value, $Res Function(_PairResponse) _then)
      : super(_value, (v) => _then(v as _PairResponse));

  @override
  _PairResponse get _value => super._value as _PairResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? allowance = freezed,
  }) {
    return _then(_PairResponse(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PairSummary,
      allowance == freezed
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as Allowance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PairResponse implements _PairResponse {
  const _$_PairResponse(this.result, this.allowance);

  factory _$_PairResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PairResponseFromJson(json);

  @override
  final PairSummary result;
  @override
  final Allowance allowance;

  @override
  String toString() {
    return 'PairResponse(result: $result, allowance: $allowance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PairResponse &&
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
  _$PairResponseCopyWith<_PairResponse> get copyWith =>
      __$PairResponseCopyWithImpl<_PairResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PairResponseToJson(this);
  }
}

abstract class _PairResponse implements PairResponse {
  const factory _PairResponse(PairSummary result, Allowance allowance) =
      _$_PairResponse;

  factory _PairResponse.fromJson(Map<String, dynamic> json) =
      _$_PairResponse.fromJson;

  @override
  PairSummary get result => throw _privateConstructorUsedError;
  @override
  Allowance get allowance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PairResponseCopyWith<_PairResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
