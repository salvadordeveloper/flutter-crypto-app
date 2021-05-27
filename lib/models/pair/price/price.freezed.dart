// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
class _$PriceTearOff {
  const _$PriceTearOff();

  _Price call(
      {required double last,
      required double high,
      required double low,
      required Change change}) {
    return _Price(
      last: last,
      high: high,
      low: low,
      change: change,
    );
  }

  Price fromJson(Map<String, Object> json) {
    return Price.fromJson(json);
  }
}

/// @nodoc
const $Price = _$PriceTearOff();

/// @nodoc
mixin _$Price {
  double get last => throw _privateConstructorUsedError;
  double get high => throw _privateConstructorUsedError;
  double get low => throw _privateConstructorUsedError;
  Change get change => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res>;
  $Res call({double last, double high, double low, Change change});

  $ChangeCopyWith<$Res> get change;
}

/// @nodoc
class _$PriceCopyWithImpl<$Res> implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  final Price _value;
  // ignore: unused_field
  final $Res Function(Price) _then;

  @override
  $Res call({
    Object? last = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? change = freezed,
  }) {
    return _then(_value.copyWith(
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as double,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as Change,
    ));
  }

  @override
  $ChangeCopyWith<$Res> get change {
    return $ChangeCopyWith<$Res>(_value.change, (value) {
      return _then(_value.copyWith(change: value));
    });
  }
}

/// @nodoc
abstract class _$PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$PriceCopyWith(_Price value, $Res Function(_Price) then) =
      __$PriceCopyWithImpl<$Res>;
  @override
  $Res call({double last, double high, double low, Change change});

  @override
  $ChangeCopyWith<$Res> get change;
}

/// @nodoc
class __$PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res>
    implements _$PriceCopyWith<$Res> {
  __$PriceCopyWithImpl(_Price _value, $Res Function(_Price) _then)
      : super(_value, (v) => _then(v as _Price));

  @override
  _Price get _value => super._value as _Price;

  @override
  $Res call({
    Object? last = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? change = freezed,
  }) {
    return _then(_Price(
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as double,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as Change,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Price implements _Price {
  const _$_Price(
      {required this.last,
      required this.high,
      required this.low,
      required this.change});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$_$_PriceFromJson(json);

  @override
  final double last;
  @override
  final double high;
  @override
  final double low;
  @override
  final Change change;

  @override
  String toString() {
    return 'Price(last: $last, high: $high, low: $low, change: $change)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Price &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.high, high) ||
                const DeepCollectionEquality().equals(other.high, high)) &&
            (identical(other.low, low) ||
                const DeepCollectionEquality().equals(other.low, low)) &&
            (identical(other.change, change) ||
                const DeepCollectionEquality().equals(other.change, change)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(high) ^
      const DeepCollectionEquality().hash(low) ^
      const DeepCollectionEquality().hash(change);

  @JsonKey(ignore: true)
  @override
  _$PriceCopyWith<_Price> get copyWith =>
      __$PriceCopyWithImpl<_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PriceToJson(this);
  }
}

abstract class _Price implements Price {
  const factory _Price(
      {required double last,
      required double high,
      required double low,
      required Change change}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

  @override
  double get last => throw _privateConstructorUsedError;
  @override
  double get high => throw _privateConstructorUsedError;
  @override
  double get low => throw _privateConstructorUsedError;
  @override
  Change get change => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PriceCopyWith<_Price> get copyWith => throw _privateConstructorUsedError;
}
