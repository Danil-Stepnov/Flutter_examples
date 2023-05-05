import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_model.dart';

part 'list_item_model.freezed.dart';
part 'list_item_model.g.dart';

@freezed
class ListItemsModel with _$ListItemsModel {
  const factory ListItemsModel({
    required List<ItemsModel> items,
  }) = _ListItemsModel;

  factory ListItemsModel.fromJson(Map<String, dynamic> json) => _$ListItemsModelFromJson(json);
}