import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_model.freezed.dart';
part 'color_model.g.dart';

@freezed
class ColorsModel with _$ColorsModel {
  const factory ColorsModel({
    required int? id,
    required String? title,
    required String? code,
}) = _ColorsModel;

  factory ColorsModel.fromJson(Map<String, dynamic> json) => _$ColorsModelFromJson(json);
}