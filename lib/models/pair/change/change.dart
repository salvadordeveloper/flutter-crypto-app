import 'package:freezed_annotation/freezed_annotation.dart';
part 'change.freezed.dart';
part 'change.g.dart';

@freezed
abstract class Change with _$Change {
  const factory Change({required double percentage, required double absolute}) =
      _Change;

  factory Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);
}
