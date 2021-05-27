// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'graph_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GraphResponseTearOff {
  const _$GraphResponseTearOff();

  _GraphResponse call({required Graph result, required Allowance allowance}) {
    return _GraphResponse(
      result: result,
      allowance: allowance,
    );
  }
}

/// @nodoc
const $GraphResponse = _$GraphResponseTearOff();

/// @nodoc
mixin _$GraphResponse {
  Graph get result => throw _privateConstructorUsedError;
  Allowance get allowance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GraphResponseCopyWith<GraphResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphResponseCopyWith<$Res> {
  factory $GraphResponseCopyWith(
          GraphResponse value, $Res Function(GraphResponse) then) =
      _$GraphResponseCopyWithImpl<$Res>;
  $Res call({Graph result, Allowance allowance});

  $GraphCopyWith<$Res> get result;
  $AllowanceCopyWith<$Res> get allowance;
}

/// @nodoc
class _$GraphResponseCopyWithImpl<$Res>
    implements $GraphResponseCopyWith<$Res> {
  _$GraphResponseCopyWithImpl(this._value, this._then);

  final GraphResponse _value;
  // ignore: unused_field
  final $Res Function(GraphResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? allowance = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Graph,
      allowance: allowance == freezed
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as Allowance,
    ));
  }

  @override
  $GraphCopyWith<$Res> get result {
    return $GraphCopyWith<$Res>(_value.result, (value) {
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
abstract class _$GraphResponseCopyWith<$Res>
    implements $GraphResponseCopyWith<$Res> {
  factory _$GraphResponseCopyWith(
          _GraphResponse value, $Res Function(_GraphResponse) then) =
      __$GraphResponseCopyWithImpl<$Res>;
  @override
  $Res call({Graph result, Allowance allowance});

  @override
  $GraphCopyWith<$Res> get result;
  @override
  $AllowanceCopyWith<$Res> get allowance;
}

/// @nodoc
class __$GraphResponseCopyWithImpl<$Res>
    extends _$GraphResponseCopyWithImpl<$Res>
    implements _$GraphResponseCopyWith<$Res> {
  __$GraphResponseCopyWithImpl(
      _GraphResponse _value, $Res Function(_GraphResponse) _then)
      : super(_value, (v) => _then(v as _GraphResponse));

  @override
  _GraphResponse get _value => super._value as _GraphResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? allowance = freezed,
  }) {
    return _then(_GraphResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Graph,
      allowance: allowance == freezed
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as Allowance,
    ));
  }
}

/// @nodoc

class _$_GraphResponse implements _GraphResponse {
  const _$_GraphResponse({required this.result, required this.allowance});

  @override
  final Graph result;
  @override
  final Allowance allowance;

  @override
  String toString() {
    return 'GraphResponse(result: $result, allowance: $allowance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GraphResponse &&
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
  _$GraphResponseCopyWith<_GraphResponse> get copyWith =>
      __$GraphResponseCopyWithImpl<_GraphResponse>(this, _$identity);
}

abstract class _GraphResponse implements GraphResponse {
  const factory _GraphResponse(
      {required Graph result, required Allowance allowance}) = _$_GraphResponse;

  @override
  Graph get result => throw _privateConstructorUsedError;
  @override
  Allowance get allowance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GraphResponseCopyWith<_GraphResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
