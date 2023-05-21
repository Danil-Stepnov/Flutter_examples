

import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/response_mappers/item_mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/models/basket_models/basket_items_model.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/basket_entities/basket_items.dart';

class BasketItemMapper extends Mapper<BasketItemsModel, BasketItemsEnt> {
  BasketItemMapper({required this.itemMapper});
  
  final ItemMapper itemMapper;
  
  @override
  BasketItemsEnt? map(BasketItemsModel? entity) {
    return BasketItemsEnt(
        id: entity?.id,
        price: entity?.price,
        quantity: entity?.quantity,
        product: itemMapper.map(entity?.product),
    );
  }

}