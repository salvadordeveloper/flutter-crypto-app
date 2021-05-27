// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pair _$PairFromJson(Map<String, dynamic> json) {
  return _Pair.fromJson(json);
}

/// @nodoc
class _$PairTearOff {
  const _$PairTearOff();

  _Pair call(
      {int? id,
      required String exchange,
      required String pair,
      bool? active,
      String? route}) {
    return _Pair(
      id: id,
      exchange: exchange,
      pair: pair,
      active: active,
      route: route,
    );
  }

  Pair fromJson(Map<String, Object> json) {
    return Pair.fromJson(json);
  }
}

/// @nodoc
const $Pair = _$PairTearOff();

/// @nodoc
mixin _$Pair {
  int? get id => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;
  String get pair => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PairCopyWith<Pair> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairCopyWith<$Res> {
  factory $PairCopyWith(Pair value, $Res Function(Pair) then) =
      _$PairCopyWithImpl<$Res>;
  $Res call(
      {int? id, String exchange, String pair, bool? active, String? route});
}

/// @nodoc
class _$PairCopyWithImpl<$Res> implements $PairCopyWith<$Res> {
  _$PairCopyWithImpl(this._value, this._then);

  final Pair _value;
  // ignore: unused_field
  final $Res Function(Pair) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? exchange = freezed,
    Object? pair = freezed,
    Object? active = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      pair: pair == freezed
          ? _value.pair
          : pair // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PairCopyWith<$Res> implements $PairCopyWith<$Res> {
  factory _$PairCopyWith(_Pair value, $Res Function(_Pair) then) =
      __$PairCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id, String exchange, String pair, bool? active, String? route});
}

/// @nodoc
class __$PairCopyWithImpl<$Res> extends _$PairCopyWithImpl<$Res>
    implements _$PairCopyWith<$Res> {
  __$PairCopyWithImpl(_Pair _value, $Res Function(_Pair) _then)
      : super(_value, (v) => _then(v as _Pair));

  @override
  _Pair get _value => super._value as _Pair;

  @override
  $Res call({
    Object? id = freezed,
    Object? exchange = freezed,
    Object? pair = freezed,
    Object? active = freezed,
    Object? route = freezed,
  }) {
    return _then(_Pair(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      pair: pair == freezed
          ? _value.pair
          : pair // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pair implements _Pair {
  const _$_Pair(
      {this.id,
      required this.exchange,
      required this.pair,
      this.active,
      this.route});

  factory _$_Pair.fromJson(Map<String, dynamic> json) =>
      _$_$_PairFromJson(json);

  @override
  final int? id;
  @override
  final String exchange;
  @override
  final String pair;
  @override
  final bool? active;
  @override
  final String? route;

  @override
  String toString() {
    return 'Pair(id: $id, exchange: $exchange, pair: $pair, active: $active, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pair &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exchange, exchange) ||
                const DeepCollectionEquality()
                    .equals(other.exchange, exchange)) &&
            (identical(other.pair, pair) ||
                const DeepCollectionEquality().equals(other.pair, pair)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exchange) ^
      const DeepCollectionEquality().hash(pair) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(route);

  @JsonKey(ignore: true)
  @override
  _$PairCopyWith<_Pair> get copyWith =>
      __$PairCopyWithImpl<_Pair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PairToJson(this);
  }
}

abstract class _Pair implements Pair {
  const factory _Pair(
      {int? id,
      required String exchange,
      required String pair,
      bool? active,
      String? route}) = _$_Pair;

  factory _Pair.fromJson(Map<String, dynamic> json) = _$_Pair.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get exchange => throw _privateConstructorUsedError;
  @override
  String get pair => throw _privateConstructorUsedError;
  @override
  bool? get active => throw _privateConstructorUsedError;
  @override
  String? get route => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PairCopyWith<_Pair> get copyWith => throw _privateConstructorUsedError;
}
