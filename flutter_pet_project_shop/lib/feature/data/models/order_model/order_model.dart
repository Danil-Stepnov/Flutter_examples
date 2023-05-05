import 'package:flutter_pet_project_shop/feature/data/models/basket_models/basket_model.dart';
import 'package:flutter_pet_project_shop/feature/data/models/basket_models/basket_user_model.dart';
import 'package:flutter_pet_project_shop/feature/data/models/order_model/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';

part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required int? id,
    required String? name,
    required String? address,
    required String? phone,
    required String? email,
    required BasketModel? basket,
    required BasketUserModel? user,
    required double? totalPrice,
    required String? comment,
    required StatusModel? status,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
