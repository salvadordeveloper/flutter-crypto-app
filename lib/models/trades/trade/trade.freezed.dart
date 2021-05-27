// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'trade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TradeTearOff {
  const _$TradeTearOff();

  _Trade call(String id, String timestamp, String price, String amount) {
    return _Trade(
      id,
      timestamp,
      price,
      amount,
    );
  }
}

/// @nodoc
const $Trade = _$TradeTearOff();

/// @nodoc
mixin _$Trade {
  String get id => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TradeCopyWith<Trade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeCopyWith<$Res> {
  factory $TradeCopyWith(Trade value, $Res Function(Trade) then) =
      _$TradeCopyWithImpl<$Res>;
  $Res call({String id, String timestamp, String price, String amount});
}

/// @nodoc
class _$TradeCopyWithImpl<$Res> implements $TradeCopyWith<$Res> {
  _$TradeCopyWithImpl(this._value, this._then);

  final Trade _value;
  // ignore: unused_field
  final $Res Function(Trade) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? price = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TradeCopyWith<$Res> implements $TradeCopyWith<$Res> {
  factory _$TradeCopyWith(_Trade value, $Res Function(_Trade) then) =
      __$TradeCopyWithImpl<$Res>;
  @override
  $Res call({String id, String timestamp, String price, String amount});
}

/// @nodoc
class __$TradeCopyWithImpl<$Res> extends _$TradeCopyWithImpl<$Res>
    implements _$TradeCopyWith<$Res> {
  __$TradeCopyWithImpl(_Trade _value, $Res Function(_Trade) _then)
      : super(_value, (v) => _then(v as _Trade));

  @override
  _Trade get _value => super._value as _Trade;

  @override
  $Res call({
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? price = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Trade(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Trade implements _Trade {
  const _$_Trade(this.id, this.timestamp, this.price, this.amount);

  @override
  final String id;
  @override
  final String timestamp;
  @override
  final String price;
  @override
  final String amount;

  @override
  String toString() {
    return 'Trade(id: $id, timestamp: $timestamp, price: $price, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trade &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$TradeCopyWith<_Trade> get copyWith =>
      __$TradeCopyWithImpl<_Trade>(this, _$identity);
}

abstract class _Trade implements Trade {
  const factory _Trade(
      String id, String timestamp, String price, String amount) = _$_Trade;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TradeCopyWith<_Trade> get copyWith => throw _privateConstructorUsedError;
}
