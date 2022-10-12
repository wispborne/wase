// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PairData<T, U> _$$PairDataFromJson<T, U>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  U Function(Object? json) fromJsonU,
) =>
    _$PairData<T, U>(
      left: _$nullableGenericFromJson(json['left'], fromJsonT),
      right: _$nullableGenericFromJson(json['right'], fromJsonU),
    );

Map<String, dynamic> _$$PairDataToJson<T, U>(
  _$PairData<T, U> instance,
  Object? Function(T value) toJsonT,
  Object? Function(U value) toJsonU,
) =>
    <String, dynamic>{
      'left': _$nullableGenericToJson(instance.left, toJsonT),
      'right': _$nullableGenericToJson(instance.right, toJsonU),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
