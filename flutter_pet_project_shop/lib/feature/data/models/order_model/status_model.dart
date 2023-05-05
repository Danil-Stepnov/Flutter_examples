import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';

part 'status_model.g.dart';

@freezed
class StatusModel with _$StatusModel {
  const factory StatusModel({
    required int? id,
    required String? title,
    required String? code,
  }) = _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);
}
