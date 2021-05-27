// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pair_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PairGraphTearOff {
  const _$PairGraphTearOff();

  _PairGraph call({required String period, required List<Points> points}) {
    return _PairGraph(
      period: period,
      points: points,
    );
  }
}

/// @nodoc
const $PairGraph = _$PairGraphTearOff();

/// @nodoc
mixin _$PairGraph {
  String get period => throw _privateConstructorUsedError;
  List<Points> get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PairGraphCopyWith<PairGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairGraphCopyWith<$Res> {
  factory $PairGraphCopyWith(PairGraph value, $Res Function(PairGraph) then) =
      _$PairGraphCopyWithImpl<$Res>;
  $Res call({String period, List<Points> points});
}

/// @nodoc
class _$PairGraphCopyWithImpl<$Res> implements $PairGraphCopyWith<$Res> {
  _$PairGraphCopyWithImpl(this._value, this._then);

  final PairGraph _value;
  // ignore: unused_field
  final $Res Function(PairGraph) _then;

  @override
  $Res call({
    Object? period = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Points>,
    ));
  }
}

/// @nodoc
abstract class _$PairGraphCopyWith<$Res> implements $PairGraphCopyWith<$Res> {
  factory _$PairGraphCopyWith(
          _PairGraph value, $Res Function(_PairGraph) then) =
      __$PairGraphCopyWithImpl<$Res>;
  @override
  $Res call({String period, List<Points> points});
}

/// @nodoc
class __$PairGraphCopyWithImpl<$Res> extends _$PairGraphCopyWithImpl<$Res>
    implements _$PairGraphCopyWith<$Res> {
  __$PairGraphCopyWithImpl(_PairGraph _value, $Res Function(_PairGraph) _then)
      : super(_value, (v) => _then(v as _PairGraph));

  @override
  _PairGraph get _value => super._value as _PairGraph;

  @override
  $Res call({
    Object? period = freezed,
    Object? points = freezed,
  }) {
    return _then(_PairGraph(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Points>,
    ));
  }
}

/// @nodoc

class _$_PairGraph implements _PairGraph {
  const _$_PairGraph({required this.period, required this.points});

  @override
  final String period;
  @override
  final List<Points> points;

  @override
  String toString() {
    return 'PairGraph(period: $period, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PairGraph &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$PairGraphCopyWith<_PairGraph> get copyWith =>
      __$PairGraphCopyWithImpl<_PairGraph>(this, _$identity);
}

abstract class _PairGraph implements PairGraph {
  const factory _PairGraph(
      {required String period, required List<Points> points}) = _$_PairGraph;

  @override
  String get period => throw _privateConstructorUsedError;
  @override
  List<Points> get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PairGraphCopyWith<_PairGraph> get copyWith =>
      throw _privateConstructorUsedError;
}
