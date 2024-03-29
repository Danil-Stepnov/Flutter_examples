import 'package:flutter_pet_project_shop/feature/basket_feature/data/mapper/basket_item_mapper.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/mapper/basket_user_mapper.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/models/basket_model.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/domain/entities/basket_entities/get_basket_entity.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';

class BasketMapper extends Mapper<BasketModel, BasketEnt> {
  BasketMapper(
      {required this.basketItemMapper, required this.basketUserMapper});

  final BasketItemMapper basketItemMapper;
  final BasketUserMapper basketUserMapper;

  @override
  BasketEnt? map(BasketModel? entity) {
    return BasketEnt(
      items: basketItemMapper.mapList(entity?.items),
      user: basketUserMapper.map(entity?.user),
    );
  }
}
