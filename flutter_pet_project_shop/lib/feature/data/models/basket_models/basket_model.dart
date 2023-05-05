import 'package:freezed_annotation/freezed_annotation.dart';

import 'basket_items_model.dart';
import 'basket_user_model.dart';

part 'basket_model.freezed.dart';

part 'basket_model.g.dart';

@freezed // Мб нужно explicitToJson делать чтоб сериализацию не сломать
class BasketModel with _$BasketModel {
  const factory BasketModel({
    required List<BasketItemsModel>? items,
    required BasketUserModel? user,
  }) = _BasketModel;

  factory BasketModel.fromJson(Map<String, dynamic> json) =>
      _$BasketModelFromJson(json);
}
