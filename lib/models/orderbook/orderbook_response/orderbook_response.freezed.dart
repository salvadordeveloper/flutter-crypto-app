// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orderbook_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderBookResponseTearOff {
  const _$OrderBookResponseTearOff();

  _OrderBookResponse call(OrderBook result) {
    return _OrderBookResponse(
      result,
    );
  }
}

/// @nodoc
const $OrderBookResponse = _$OrderBookResponseTearOff();

/// @nodoc
mixin _$OrderBookResponse {
  OrderBook get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderBookResponseCopyWith<OrderBookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBookResponseCopyWith<$Res> {
  factory $OrderBookResponseCopyWith(
          OrderBookResponse value, $Res Function(OrderBookResponse) then) =
      _$OrderBookResponseCopyWithImpl<$Res>;
  $Res call({OrderBook result});

  $OrderBookCopyWith<$Res> get result;
}

/// @nodoc
class _$OrderBookResponseCopyWithImpl<$Res>
    implements $OrderBookResponseCopyWith<$Res> {
  _$OrderBookResponseCopyWithImpl(this._value, this._then);

  final OrderBookResponse _value;
  // ignore: unused_field
  final $Res Function(OrderBookResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as OrderBook,
    ));
  }

  @override
  $OrderBookCopyWith<$Res> get result {
    return $OrderBookCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$OrderBookResponseCopyWith<$Res>
    implements $OrderBookResponseCopyWith<$Res> {
  factory _$OrderBookResponseCopyWith(
          _OrderBookResponse value, $Res Function(_OrderBookResponse) then) =
      __$OrderBookResponseCopyWithImpl<$Res>;
  @override
  $Res call({OrderBook result});

  @override
  $OrderBookCopyWith<$Res> get result;
}

/// @nodoc
class __$OrderBookResponseCopyWithImpl<$Res>
    extends _$OrderBookResponseCopyWithImpl<$Res>
    implements _$OrderBookResponseCopyWith<$Res> {
  __$OrderBookResponseCopyWithImpl(
      _OrderBookResponse _value, $Res Function(_OrderBookResponse) _then)
      : super(_value, (v) => _then(v as _OrderBookResponse));

  @override
  _OrderBookResponse get _value => super._value as _OrderBookResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_OrderBookResponse(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as OrderBook,
    ));
  }
}

/// @nodoc

class _$_OrderBookResponse implements _OrderBookResponse {
  const _$_OrderBookResponse(this.result);

  @override
  final OrderBook result;

  @override
  String toString() {
    return 'OrderBookResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderBookResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$OrderBookResponseCopyWith<_OrderBookResponse> get copyWith =>
      __$OrderBookResponseCopyWithImpl<_OrderBookResponse>(this, _$identity);
}

abstract class _OrderBookResponse implements OrderBookResponse {
  const factory _OrderBookResponse(OrderBook result) = _$_OrderBookResponse;

  @override
  OrderBook get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderBookResponseCopyWith<_OrderBookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
