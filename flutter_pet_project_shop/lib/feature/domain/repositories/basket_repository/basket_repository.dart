import 'package:flutter_pet_project_shop/feature/domain/entities/basket_entities/get_basket_entity.dart';

abstract class BasketRepository {
  Future<BasketEnt>? getBasket();

  Future<bool>? postToBasket({required int? productId});

  Future<bool>? deleteFromBasket({required int? productId});

  Future<bool>? changeQuantity(
      {required int? productId, required int? quantity});
}
