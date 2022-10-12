// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pair<T, U> _$PairFromJson<T, U>(Map<String, dynamic> json,
    T Function(Object?) fromJsonT, U Function(Object?) fromJsonU) {
  return PairData<T, U>.fromJson(json, fromJsonT, fromJsonU);
}

/// @nodoc
mixin _$Pair<T, U> {
  T? get left => throw _privateConstructorUsedError;
  U? get right => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? left, U? right) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? left, U? right)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? left, U? right)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PairData<T, U> value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PairData<T, U> value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PairData<T, U> value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(
          Object? Function(T) toJsonT, Object? Function(U) toJsonU) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PairCopyWith<T, U, Pair<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairCopyWith<T, U, $Res> {
  factory $PairCopyWith(Pair<T, U> value, $Res Function(Pair<T, U>) then) =
      _$PairCopyWithImpl<T, U, $Res>;
  $Res call({T? left, U? right});
}

/// @nodoc
class _$PairCopyWithImpl<T, U, $Res> implements $PairCopyWith<T, U, $Res> {
  _$PairCopyWithImpl(this._value, this._then);

  final Pair<T, U> _value;
  // ignore: unused_field
  final $Res Function(Pair<T, U>) _then;

  @override
  $Res call({
    Object? left = freezed,
    Object? right = freezed,
  }) {
    return _then(_value.copyWith(
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as T?,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as U?,
    ));
  }
}

/// @nodoc
abstract class _$$PairDataCopyWith<T, U, $Res>
    implements $PairCopyWith<T, U, $Res> {
  factory _$$PairDataCopyWith(
          _$PairData<T, U> value, $Res Function(_$PairData<T, U>) then) =
      __$$PairDataCopyWithImpl<T, U, $Res>;
  @override
  $Res call({T? left, U? right});
}

/// @nodoc
class __$$PairDataCopyWithImpl<T, U, $Res>
    extends _$PairCopyWithImpl<T, U, $Res>
    implements _$$PairDataCopyWith<T, U, $Res> {
  __$$PairDataCopyWithImpl(
      _$PairData<T, U> _value, $Res Function(_$PairData<T, U>) _then)
      : super(_value, (v) => _then(v as _$PairData<T, U>));

  @override
  _$PairData<T, U> get _value => super._value as _$PairData<T, U>;

  @override
  $Res call({
    Object? left = freezed,
    Object? right = freezed,
  }) {
    return _then(_$PairData<T, U>(
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as T?,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as U?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PairData<T, U> implements PairData<T, U> {
  _$PairData({this.left, this.right});

  factory _$PairData.fromJson(Map<String, dynamic> json,
          T Function(Object?) fromJsonT, U Function(Object?) fromJsonU) =>
      _$$PairDataFromJson(json, fromJsonT, fromJsonU);

  @override
  final T? left;
  @override
  final U? right;

  @override
  String toString() {
    return 'Pair<$T, $U>.data(left: $left, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PairData<T, U> &&
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
  _$$PairDataCopyWith<T, U, _$PairData<T, U>> get copyWith =>
      __$$PairDataCopyWithImpl<T, U, _$PairData<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? left, U? right) data,
  }) {
    return data(left, right);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? left, U? right)? data,
  }) {
    return data?.call(left, right);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? left, U? right)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(left, right);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PairData<T, U> value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PairData<T, U> value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PairData<T, U> value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(T) toJsonT, Object? Function(U) toJsonU) {
    return _$$PairDataToJson<T, U>(this, toJsonT, toJsonU);
  }
}

abstract class PairData<T, U> implements Pair<T, U> {
  factory PairData({final T? left, final U? right}) = _$PairData<T, U>;

  factory PairData.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      U Function(Object?) fromJsonU) = _$PairData<T, U>.fromJson;

  @override
  T? get left;
  @override
  U? get right;
  @override
  @JsonKey(ignore: true)
  _$$PairDataCopyWith<T, U, _$PairData<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}
