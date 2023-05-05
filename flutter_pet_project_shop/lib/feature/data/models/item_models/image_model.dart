import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'file_model.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required FileModel? file,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);
}