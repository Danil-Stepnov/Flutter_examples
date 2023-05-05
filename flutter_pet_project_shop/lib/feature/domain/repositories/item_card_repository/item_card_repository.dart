import 'package:flutter_pet_project_shop/feature/domain/entities/item_intities/item_entity.dart';

abstract class ItemCardRepository {
  Future<Items> getItemCard({required int? productId});
}