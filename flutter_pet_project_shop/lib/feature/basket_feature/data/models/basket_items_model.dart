import 'package:flutter_pet_project_shop/feature/catalog_feature/data/models/item_models/item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'basket_items_model.freezed.dart';

part 'basket_items_model.g.dart';

@freezed
class BasketItemsModel with _$BasketItemsModel {
  const factory BasketItemsModel({
    required int? id,
    required double? price,
    required int? quantity,
    required ItemsModel? product,
  }) = _BasketItemsModel;

  factory BasketItemsModel.fromJson(Map<String, dynamic> json) =>
      _$BasketItemsModelFromJson(json);
}
