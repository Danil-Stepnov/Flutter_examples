import 'package:flutter_pet_project_shop/feature/catalog_feature/domain/entities/item_entities/item_entity.dart';

abstract class ItemCardRepository {
  Future<Items> getItemCard({required int? productId});
}

