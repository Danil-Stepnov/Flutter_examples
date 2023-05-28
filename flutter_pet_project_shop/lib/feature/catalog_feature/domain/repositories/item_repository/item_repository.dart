import '../../entities/item_entities/item_entity.dart';
import '../../entities/item_entities/list_item_entity.dart';

abstract class ItemRepository {
  Future<ListItemsEnt?>? getAllItems({required int offset});

  Future<List<Items>>? searchItem(String itemId);
}