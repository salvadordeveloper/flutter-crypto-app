// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exchange _$ExchangeFromJson(Map<String, dynamic> json) {
  return _Exchange.fromJson(json);
}

/// @nodoc
class _$ExchangeTearOff {
  const _$ExchangeTearOff();

  _Exchange call(
      {required int id,
      required String symbol,
      required String name,
      required String route,
      required bool active}) {
    return _Exchange(
      id: id,
      symbol: symbol,
      name: name,
      route: route,
      active: active,
    );
  }

  Exchange fromJson(Map<String, Object> json) {
    return Exchange.fromJson(json);
  }
}

/// @nodoc
const $Exchange = _$ExchangeTearOff();

/// @nodoc
mixin _$Exchange {
  int get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeCopyWith<Exchange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeCopyWith<$Res> {
  factory $ExchangeCopyWith(Exchange value, $Res Function(Exchange) then) =
      _$ExchangeCopyWithImpl<$Res>;
  $Res call({int id, String symbol, String name, String route, bool active});
}

/// @nodoc
class _$ExchangeCopyWithImpl<$Res> implements $ExchangeCopyWith<$Res> {
  _$ExchangeCopyWithImpl(this._value, this._then);

  final Exchange _value;
  // ignore: unused_field
  final $Res Function(Exchange) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? route = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ExchangeCopyWith<$Res> implements $ExchangeCopyWith<$Res> {
  factory _$ExchangeCopyWith(_Exchange value, $Res Function(_Exchange) then) =
      __$ExchangeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String symbol, String name, String route, bool active});
}

/// @nodoc
class __$ExchangeCopyWithImpl<$Res> extends _$ExchangeCopyWithImpl<$Res>
    implements _$ExchangeCopyWith<$Res> {
  __$ExchangeCopyWithImpl(_Exchange _value, $Res Function(_Exchange) _then)
      : super(_value, (v) => _then(v as _Exchange));

  @override
  _Exchange get _value => super._value as _Exchange;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? route = freezed,
    Object? active = freezed,
  }) {
    return _then(_Exchange(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exchange implements _Exchange {
  const _$_Exchange(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.route,
      required this.active});

  factory _$_Exchange.fromJson(Map<String, dynamic> json) =>
      _$_$_ExchangeFromJson(json);

  @override
  final int id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String route;
  @override
  final bool active;

  @override
  String toString() {
    return 'Exchange(id: $id, symbol: $symbol, name: $name, route: $route, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exchange &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$ExchangeCopyWith<_Exchange> get copyWith =>
      __$ExchangeCopyWithImpl<_Exchange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExchangeToJson(this);
  }
}

abstract class _Exchange implements Exchange {
  const factory _Exchange(
      {required int id,
      required String symbol,
      required String name,
      required String route,
      required bool active}) = _$_Exchange;

  factory _Exchange.fromJson(Map<String, dynamic> json) = _$_Exchange.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get route => throw _privateConstructorUsedError;
  @override
  bool get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExchangeCopyWith<_Exchange> get copyWith =>
      throw _privateConstructorUsedError;
}
