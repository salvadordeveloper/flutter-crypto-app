// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorite_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritePair _$FavoritePairFromJson(Map<String, dynamic> json) {
  return _FavoritePair.fromJson(json);
}

/// @nodoc
class _$FavoritePairTearOff {
  const _$FavoritePairTearOff();

  _FavoritePair call({required Pair pair, required PairSummary pairSummary}) {
    return _FavoritePair(
      pair: pair,
      pairSummary: pairSummary,
    );
  }

  FavoritePair fromJson(Map<String, Object> json) {
    return FavoritePair.fromJson(json);
  }
}

/// @nodoc
const $FavoritePair = _$FavoritePairTearOff();

/// @nodoc
mixin _$FavoritePair {
  Pair get pair => throw _privateConstructorUsedError;
  PairSummary get pairSummary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritePairCopyWith<FavoritePair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePairCopyWith<$Res> {
  factory $FavoritePairCopyWith(
          FavoritePair value, $Res Function(FavoritePair) then) =
      _$FavoritePairCopyWithImpl<$Res>;
  $Res call({Pair pair, PairSummary pairSummary});

  $PairCopyWith<$Res> get pair;
  $PairSummaryCopyWith<$Res> get pairSummary;
}

/// @nodoc
class _$FavoritePairCopyWithImpl<$Res> implements $FavoritePairCopyWith<$Res> {
  _$FavoritePairCopyWithImpl(this._value, this._then);

  final FavoritePair _value;
  // ignore: unused_field
  final $Res Function(FavoritePair) _then;

  @override
  $Res call({
    Object? pair = freezed,
    Object? pairSummary = freezed,
  }) {
    return _then(_value.copyWith(
      pair: pair == freezed
          ? _value.pair
          : pair // ignore: cast_nullable_to_non_nullable
              as Pair,
      pairSummary: pairSummary == freezed
          ? _value.pairSummary
          : pairSummary // ignore: cast_nullable_to_non_nullable
              as PairSummary,
    ));
  }

  @override
  $PairCopyWith<$Res> get pair {
    return $PairCopyWith<$Res>(_value.pair, (value) {
      return _then(_value.copyWith(pair: value));
    });
  }

  @override
  $PairSummaryCopyWith<$Res> get pairSummary {
    return $PairSummaryCopyWith<$Res>(_value.pairSummary, (value) {
      return _then(_value.copyWith(pairSummary: value));
    });
  }
}

/// @nodoc
abstract class _$FavoritePairCopyWith<$Res>
    implements $FavoritePairCopyWith<$Res> {
  factory _$FavoritePairCopyWith(
          _FavoritePair value, $Res Function(_FavoritePair) then) =
      __$FavoritePairCopyWithImpl<$Res>;
  @override
  $Res call({Pair pair, PairSummary pairSummary});

  @override
  $PairCopyWith<$Res> get pair;
  @override
  $PairSummaryCopyWith<$Res> get pairSummary;
}

/// @nodoc
class __$FavoritePairCopyWithImpl<$Res> extends _$FavoritePairCopyWithImpl<$Res>
    implements _$FavoritePairCopyWith<$Res> {
  __$FavoritePairCopyWithImpl(
      _FavoritePair _value, $Res Function(_FavoritePair) _then)
      : super(_value, (v) => _then(v as _FavoritePair));

  @override
  _FavoritePair get _value => super._value as _FavoritePair;

  @override
  $Res call({
    Object? pair = freezed,
    Object? pairSummary = freezed,
  }) {
    return _then(_FavoritePair(
      pair: pair == freezed
          ? _value.pair
          : pair // ignore: cast_nullable_to_non_nullable
              as Pair,
      pairSummary: pairSummary == freezed
          ? _value.pairSummary
          : pairSummary // ignore: cast_nullable_to_non_nullable
              as PairSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoritePair implements _FavoritePair {
  const _$_FavoritePair({required this.pair, required this.pairSummary});

  factory _$_FavoritePair.fromJson(Map<String, dynamic> json) =>
      _$_$_FavoritePairFromJson(json);

  @override
  final Pair pair;
  @override
  final PairSummary pairSummary;

  @override
  String toString() {
    return 'FavoritePair(pair: $pair, pairSummary: $pairSummary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritePair &&
            (identical(other.pair, pair) ||
                const DeepCollectionEquality().equals(other.pair, pair)) &&
            (identical(other.pairSummary, pairSummary) ||
                const DeepCollectionEquality()
                    .equals(other.pairSummary, pairSummary)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pair) ^
      const DeepCollectionEquality().hash(pairSummary);

  @JsonKey(ignore: true)
  @override
  _$FavoritePairCopyWith<_FavoritePair> get copyWith =>
      __$FavoritePairCopyWithImpl<_FavoritePair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FavoritePairToJson(this);
  }
}

abstract class _FavoritePair implements FavoritePair {
  const factory _FavoritePair(
      {required Pair pair, required PairSummary pairSummary}) = _$_FavoritePair;

  factory _FavoritePair.fromJson(Map<String, dynamic> json) =
      _$_FavoritePair.fromJson;

  @override
  Pair get pair => throw _privateConstructorUsedError;
  @override
  PairSummary get pairSummary => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoritePairCopyWith<_FavoritePair> get copyWith =>
      throw _privateConstructorUsedError;
}
