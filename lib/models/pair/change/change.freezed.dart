// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Change _$ChangeFromJson(Map<String, dynamic> json) {
  return _Change.fromJson(json);
}

/// @nodoc
class _$ChangeTearOff {
  const _$ChangeTearOff();

  _Change call({required double percentage, required double absolute}) {
    return _Change(
      percentage: percentage,
      absolute: absolute,
    );
  }

  Change fromJson(Map<String, Object> json) {
    return Change.fromJson(json);
  }
}

/// @nodoc
const $Change = _$ChangeTearOff();

/// @nodoc
mixin _$Change {
  double get percentage => throw _privateConstructorUsedError;
  double get absolute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeCopyWith<Change> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCopyWith<$Res> {
  factory $ChangeCopyWith(Change value, $Res Function(Change) then) =
      _$ChangeCopyWithImpl<$Res>;
  $Res call({double percentage, double absolute});
}

/// @nodoc
class _$ChangeCopyWithImpl<$Res> implements $ChangeCopyWith<$Res> {
  _$ChangeCopyWithImpl(this._value, this._then);

  final Change _value;
  // ignore: unused_field
  final $Res Function(Change) _then;

  @override
  $Res call({
    Object? percentage = freezed,
    Object? absolute = freezed,
  }) {
    return _then(_value.copyWith(
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
      absolute: absolute == freezed
          ? _value.absolute
          : absolute // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ChangeCopyWith<$Res> implements $ChangeCopyWith<$Res> {
  factory _$ChangeCopyWith(_Change value, $Res Function(_Change) then) =
      __$ChangeCopyWithImpl<$Res>;
  @override
  $Res call({double percentage, double absolute});
}

/// @nodoc
class __$ChangeCopyWithImpl<$Res> extends _$ChangeCopyWithImpl<$Res>
    implements _$ChangeCopyWith<$Res> {
  __$ChangeCopyWithImpl(_Change _value, $Res Function(_Change) _then)
      : super(_value, (v) => _then(v as _Change));

  @override
  _Change get _value => super._value as _Change;

  @override
  $Res call({
    Object? percentage = freezed,
    Object? absolute = freezed,
  }) {
    return _then(_Change(
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
      absolute: absolute == freezed
          ? _value.absolute
          : absolute // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Change implements _Change {
  const _$_Change({required this.percentage, required this.absolute});

  factory _$_Change.fromJson(Map<String, dynamic> json) =>
      _$_$_ChangeFromJson(json);

  @override
  final double percentage;
  @override
  final double absolute;

  @override
  String toString() {
    return 'Change(percentage: $percentage, absolute: $absolute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Change &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)) &&
            (identical(other.absolute, absolute) ||
                const DeepCollectionEquality()
                    .equals(other.absolute, absolute)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(percentage) ^
      const DeepCollectionEquality().hash(absolute);

  @JsonKey(ignore: true)
  @override
  _$ChangeCopyWith<_Change> get copyWith =>
      __$ChangeCopyWithImpl<_Change>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChangeToJson(this);
  }
}

abstract class _Change implements Change {
  const factory _Change(
      {required double percentage, required double absolute}) = _$_Change;

  factory _Change.fromJson(Map<String, dynamic> json) = _$_Change.fromJson;

  @override
  double get percentage => throw _privateConstructorUsedError;
  @override
  double get absolute => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangeCopyWith<_Change> get copyWith => throw _privateConstructorUsedError;
}
