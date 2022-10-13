// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stringPair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StringPair _$StringPairFromJson(Map<String, dynamic> json) {
  return _StringPair.fromJson(json);
}

/// @nodoc
mixin _$StringPair {
  String get left => throw _privateConstructorUsedError;
  String? get right => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringPairCopyWith<StringPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringPairCopyWith<$Res> {
  factory $StringPairCopyWith(
          StringPair value, $Res Function(StringPair) then) =
      _$StringPairCopyWithImpl<$Res>;
  $Res call({String left, String? right});
}

/// @nodoc
class _$StringPairCopyWithImpl<$Res> implements $StringPairCopyWith<$Res> {
  _$StringPairCopyWithImpl(this._value, this._then);

  final StringPair _value;
  // ignore: unused_field
  final $Res Function(StringPair) _then;

  @override
  $Res call({
    Object? left = freezed,
    Object? right = freezed,
  }) {
    return _then(_value.copyWith(
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as String,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StringPairCopyWith<$Res>
    implements $StringPairCopyWith<$Res> {
  factory _$$_StringPairCopyWith(
          _$_StringPair value, $Res Function(_$_StringPair) then) =
      __$$_StringPairCopyWithImpl<$Res>;
  @override
  $Res call({String left, String? right});
}

/// @nodoc
class __$$_StringPairCopyWithImpl<$Res> extends _$StringPairCopyWithImpl<$Res>
    implements _$$_StringPairCopyWith<$Res> {
  __$$_StringPairCopyWithImpl(
      _$_StringPair _value, $Res Function(_$_StringPair) _then)
      : super(_value, (v) => _then(v as _$_StringPair));

  @override
  _$_StringPair get _value => super._value as _$_StringPair;

  @override
  $Res call({
    Object? left = freezed,
    Object? right = freezed,
  }) {
    return _then(_$_StringPair(
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as String,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StringPair implements _StringPair {
  _$_StringPair({this.left = "", this.right});

  factory _$_StringPair.fromJson(Map<String, dynamic> json) =>
      _$$_StringPairFromJson(json);

  @override
  @JsonKey()
  final String left;
  @override
  final String? right;

  @override
  String toString() {
    return 'StringPair(left: $left, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringPair &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.right, right));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(right));

  @JsonKey(ignore: true)
  @override
  _$$_StringPairCopyWith<_$_StringPair> get copyWith =>
      __$$_StringPairCopyWithImpl<_$_StringPair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StringPairToJson(
      this,
    );
  }
}

abstract class _StringPair implements StringPair {
  factory _StringPair({final String left, final String? right}) = _$_StringPair;

  factory _StringPair.fromJson(Map<String, dynamic> json) =
      _$_StringPair.fromJson;

  @override
  String get left;
  @override
  String? get right;
  @override
  @JsonKey(ignore: true)
  _$$_StringPairCopyWith<_$_StringPair> get copyWith =>
      throw _privateConstructorUsedError;
}
