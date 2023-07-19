import 'package:flutter_pet_project_shop/feature/basket_feature/domain/entities/basket_entities/get_basket_entity.dart';
abstract class BasketRepository {

  Future<BasketEnt?>? getBasket();

  Future<void> postToBasket({required int? productId, required int? quantity});

  Future<void> deleteFromBasket({required int? productId});

  Future<void> changeQuantity(
      {required int? productId, required int? quantity});
}
