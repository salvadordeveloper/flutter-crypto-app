// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'allowance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Allowance _$AllowanceFromJson(Map<String, dynamic> json) {
  return _Allowance.fromJson(json);
}

/// @nodoc
class _$AllowanceTearOff {
  const _$AllowanceTearOff();

  _Allowance call({required double cost, required double remaining}) {
    return _Allowance(
      cost: cost,
      remaining: remaining,
    );
  }

  Allowance fromJson(Map<String, Object> json) {
    return Allowance.fromJson(json);
  }
}

/// @nodoc
const $Allowance = _$AllowanceTearOff();

/// @nodoc
mixin _$Allowance {
  double get cost => throw _privateConstructorUsedError;
  double get remaining => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllowanceCopyWith<Allowance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllowanceCopyWith<$Res> {
  factory $AllowanceCopyWith(Allowance value, $Res Function(Allowance) then) =
      _$AllowanceCopyWithImpl<$Res>;
  $Res call({double cost, double remaining});
}

/// @nodoc
class _$AllowanceCopyWithImpl<$Res> implements $AllowanceCopyWith<$Res> {
  _$AllowanceCopyWithImpl(this._value, this._then);

  final Allowance _value;
  // ignore: unused_field
  final $Res Function(Allowance) _then;

  @override
  $Res call({
    Object? cost = freezed,
    Object? remaining = freezed,
  }) {
    return _then(_value.copyWith(
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      remaining: remaining == freezed
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$AllowanceCopyWith<$Res> implements $AllowanceCopyWith<$Res> {
  factory _$AllowanceCopyWith(
          _Allowance value, $Res Function(_Allowance) then) =
      __$AllowanceCopyWithImpl<$Res>;
  @override
  $Res call({double cost, double remaining});
}

/// @nodoc
class __$AllowanceCopyWithImpl<$Res> extends _$AllowanceCopyWithImpl<$Res>
    implements _$AllowanceCopyWith<$Res> {
  __$AllowanceCopyWithImpl(_Allowance _value, $Res Function(_Allowance) _then)
      : super(_value, (v) => _then(v as _Allowance));

  @override
  _Allowance get _value => super._value as _Allowance;

  @override
  $Res call({
    Object? cost = freezed,
    Object? remaining = freezed,
  }) {
    return _then(_Allowance(
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      remaining: remaining == freezed
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Allowance implements _Allowance {
  const _$_Allowance({required this.cost, required this.remaining});

  factory _$_Allowance.fromJson(Map<String, dynamic> json) =>
      _$_$_AllowanceFromJson(json);

  @override
  final double cost;
  @override
  final double remaining;

  @override
  String toString() {
    return 'Allowance(cost: $cost, remaining: $remaining)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Allowance &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.remaining, remaining) ||
                const DeepCollectionEquality()
                    .equals(other.remaining, remaining)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(remaining);

  @JsonKey(ignore: true)
  @override
  _$AllowanceCopyWith<_Allowance> get copyWith =>
      __$AllowanceCopyWithImpl<_Allowance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AllowanceToJson(this);
  }
}

abstract class _Allowance implements Allowance {
  const factory _Allowance({required double cost, required double remaining}) =
      _$_Allowance;

  factory _Allowance.fromJson(Map<String, dynamic> json) =
      _$_Allowance.fromJson;

  @override
  double get cost => throw _privateConstructorUsedError;
  @override
  double get remaining => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AllowanceCopyWith<_Allowance> get copyWith =>
      throw _privateConstructorUsedError;
}
