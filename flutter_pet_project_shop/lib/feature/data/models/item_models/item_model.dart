import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_pet_project_shop/feature/data/models/categories_models/category_model.dart';
import 'color_model.dart';
import 'image_model.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemsModel with _$ItemsModel {
  const factory ItemsModel({
    required int? id,
    required String? title,
    required String? slug,
    required ImageModel? image,
    required double? price,
    required List<ColorsModel>? colors,
    required CategoryModel? category,
  }) = _ItemsModel;

  factory ItemsModel.fromJson(Map<String, dynamic> json) => _$ItemsModelFromJson(json);
}