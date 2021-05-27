// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orderbook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderBookTearOff {
  const _$OrderBookTearOff();

  _OrderBook call(List<Price> asks, List<Price> bids, int seqNum) {
    return _OrderBook(
      asks,
      bids,
      seqNum,
    );
  }
}

/// @nodoc
const $OrderBook = _$OrderBookTearOff();

/// @nodoc
mixin _$OrderBook {
  List<Price> get asks => throw _privateConstructorUsedError;
  List<Price> get bids => throw _privateConstructorUsedError;
  int get seqNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderBookCopyWith<OrderBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBookCopyWith<$Res> {
  factory $OrderBookCopyWith(OrderBook value, $Res Function(OrderBook) then) =
      _$OrderBookCopyWithImpl<$Res>;
  $Res call({List<Price> asks, List<Price> bids, int seqNum});
}

/// @nodoc
class _$OrderBookCopyWithImpl<$Res> implements $OrderBookCopyWith<$Res> {
  _$OrderBookCopyWithImpl(this._value, this._then);

  final OrderBook _value;
  // ignore: unused_field
  final $Res Function(OrderBook) _then;

  @override
  $Res call({
    Object? asks = freezed,
    Object? bids = freezed,
    Object? seqNum = freezed,
  }) {
    return _then(_value.copyWith(
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      seqNum: seqNum == freezed
          ? _value.seqNum
          : seqNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OrderBookCopyWith<$Res> implements $OrderBookCopyWith<$Res> {
  factory _$OrderBookCopyWith(
          _OrderBook value, $Res Function(_OrderBook) then) =
      __$OrderBookCopyWithImpl<$Res>;
  @override
  $Res call({List<Price> asks, List<Price> bids, int seqNum});
}

/// @nodoc
class __$OrderBookCopyWithImpl<$Res> extends _$OrderBookCopyWithImpl<$Res>
    implements _$OrderBookCopyWith<$Res> {
  __$OrderBookCopyWithImpl(_OrderBook _value, $Res Function(_OrderBook) _then)
      : super(_value, (v) => _then(v as _OrderBook));

  @override
  _OrderBook get _value => super._value as _OrderBook;

  @override
  $Res call({
    Object? asks = freezed,
    Object? bids = freezed,
    Object? seqNum = freezed,
  }) {
    return _then(_OrderBook(
      asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      seqNum == freezed
          ? _value.seqNum
          : seqNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OrderBook implements _OrderBook {
  const _$_OrderBook(this.asks, this.bids, this.seqNum);

  @override
  final List<Price> asks;
  @override
  final List<Price> bids;
  @override
  final int seqNum;

  @override
  String toString() {
    return 'OrderBook(asks: $asks, bids: $bids, seqNum: $seqNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderBook &&
            (identical(other.asks, asks) ||
                const DeepCollectionEquality().equals(other.asks, asks)) &&
            (identical(other.bids, bids) ||
                const DeepCollectionEquality().equals(other.bids, bids)) &&
            (identical(other.seqNum, seqNum) ||
                const DeepCollectionEquality().equals(other.seqNum, seqNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(asks) ^
      const DeepCollectionEquality().hash(bids) ^
      const DeepCollectionEquality().hash(seqNum);

  @JsonKey(ignore: true)
  @override
  _$OrderBookCopyWith<_OrderBook> get copyWith =>
      __$OrderBookCopyWithImpl<_OrderBook>(this, _$identity);
}

abstract class _OrderBook implements OrderBook {
  const factory _OrderBook(List<Price> asks, List<Price> bids, int seqNum) =
      _$_OrderBook;

  @override
  List<Price> get asks => throw _privateConstructorUsedError;
  @override
  List<Price> get bids => throw _privateConstructorUsedError;
  @override
  int get seqNum => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderBookCopyWith<_OrderBook> get copyWith =>
      throw _privateConstructorUsedError;
}
