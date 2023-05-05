import 'package:flutter_pet_project_shop/feature/domain/entities/item_intities/item_entity.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/item_intities/list_item_entity.dart';

abstract class ItemRepository {
  Future<ListItemsEnt>? getAllItems({required int offset}); // Надо разобраться с этим

  Future<List<Items>>? searchItem(String itemId);
}