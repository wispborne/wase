import 'package:freezed_annotation/freezed_annotation.dart';

part 'pair.freezed.dart';
part 'pair.g.dart';

/// Represents a generic pair of two values.
@Freezed(genericArgumentFactories: true)
class Pair<T, U> with _$Pair<T, U> {
  factory Pair.data({
  final T? left,
  final U? right
  }) = PairData;

  factory Pair.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT, U Function(Object?) fromJsonU)
  => _$PairFromJson(json, fromJsonT, fromJsonU);
}

// extension PairExtensions<T> on Pair<T, T> {
//   List<T?> toList() => listOf([left, right]);
// }