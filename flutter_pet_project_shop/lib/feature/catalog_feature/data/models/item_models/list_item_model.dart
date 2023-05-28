import 'package:flutter_pet_project_shop/feature/catalog_feature/data/models/item_models/pagination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_model.dart';

part 'list_item_model.freezed.dart';
part 'list_item_model.g.dart';

@freezed
class ListItemsModel with _$ListItemsModel {
  const factory ListItemsModel({
    required List<ItemsModel>? items,
    required PaginationModel? pagination,
  }) = _ListItemsModel;

  factory ListItemsModel.fromJson(Map<String, dynamic> json) => _$ListItemsModelFromJson(json);
}