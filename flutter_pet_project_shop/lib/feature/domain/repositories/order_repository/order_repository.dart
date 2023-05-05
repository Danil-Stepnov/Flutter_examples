import 'package:flutter_pet_project_shop/feature/domain/entities/order_entities/order_entity.dart';

abstract class OrderRepository {
  Future<OrderEnt>? createOrder(
      {required String? name,
        required String? address,
        required String? phone,
        required String? email,
        required String? comment});

  Future<OrderEnt>? getOrderInfo({ required String? orderId});
}