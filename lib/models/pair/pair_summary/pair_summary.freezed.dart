// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pair_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PairSummary _$PairSummaryFromJson(Map<String, dynamic> json) {
  return _PairSummary.fromJson(json);
}

/// @nodoc
class _$PairSummaryTearOff {
  const _$PairSummaryTearOff();

  _PairSummary call(
      {required Price price,
      required double volume,
      required double volumeQuote}) {
    return _PairSummary(
      price: price,
      volume: volume,
      volumeQuote: volumeQuote,
    );
  }

  PairSummary fromJson(Map<String, Object> json) {
    return PairSummary.fromJson(json);
  }
}

/// @nodoc
const $PairSummary = _$PairSummaryTearOff();

/// @nodoc
mixin _$PairSummary {
  Price get price => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get volumeQuote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PairSummaryCopyWith<PairSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairSummaryCopyWith<$Res> {
  factory $PairSummaryCopyWith(
          PairSummary value, $Res Function(PairSummary) then) =
      _$PairSummaryCopyWithImpl<$Res>;
  $Res call({Price price, double volume, double volumeQuote});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$PairSummaryCopyWithImpl<$Res> implements $PairSummaryCopyWith<$Res> {
  _$PairSummaryCopyWithImpl(this._value, this._then);

  final PairSummary _value;
  // ignore: unused_field
  final $Res Function(PairSummary) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? volume = freezed,
    Object? volumeQuote = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeQuote: volumeQuote == freezed
          ? _value.volumeQuote
          : volumeQuote // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc
abstract class _$PairSummaryCopyWith<$Res>
    implements $PairSummaryCopyWith<$Res> {
  factory _$PairSummaryCopyWith(
          _PairSummary value, $Res Function(_PairSummary) then) =
      __$PairSummaryCopyWithImpl<$Res>;
  @override
  $Res call({Price price, double volume, double volumeQuote});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$PairSummaryCopyWithImpl<$Res> extends _$PairSummaryCopyWithImpl<$Res>
    implements _$PairSummaryCopyWith<$Res> {
  __$PairSummaryCopyWithImpl(
      _PairSummary _value, $Res Function(_PairSummary) _then)
      : super(_value, (v) => _then(v as _PairSummary));

  @override
  _PairSummary get _value => super._value as _PairSummary;

  @override
  $Res call({
    Object? price = freezed,
    Object? volume = freezed,
    Object? volumeQuote = freezed,
  }) {
    return _then(_PairSummary(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeQuote: volumeQuote == freezed
          ? _value.volumeQuote
          : volumeQuote // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PairSummary implements _PairSummary {
  const _$_PairSummary(
      {required this.price, required this.volume, required this.volumeQuote});

  factory _$_PairSummary.fromJson(Map<String, dynamic> json) =>
      _$_$_PairSummaryFromJson(json);

  @override
  final Price price;
  @override
  final double volume;
  @override
  final double volumeQuote;

  @override
  String toString() {
    return 'PairSummary(price: $price, volume: $volume, volumeQuote: $volumeQuote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PairSummary &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.volumeQuote, volumeQuote) ||
                const DeepCollectionEquality()
                    .equals(other.volumeQuote, volumeQuote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(volumeQuote);

  @JsonKey(ignore: true)
  @override
  _$PairSummaryCopyWith<_PairSummary> get copyWith =>
      __$PairSummaryCopyWithImpl<_PairSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PairSummaryToJson(this);
  }
}

abstract class _PairSummary implements PairSummary {
  const factory _PairSummary(
      {required Price price,
      required double volume,
      required double volumeQuote}) = _$_PairSummary;

  factory _PairSummary.fromJson(Map<String, dynamic> json) =
      _$_PairSummary.fromJson;

  @override
  Price get price => throw _privateConstructorUsedError;
  @override
  double get volume => throw _privateConstructorUsedError;
  @override
  double get volumeQuote => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PairSummaryCopyWith<_PairSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
