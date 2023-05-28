

import 'package:flutter_pet_project_shop/feature/data/mapper/response_mappers/category_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/color_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/image_mapper.dart';

import '../../../data/mapper/mapper.dart';
import '../../domain/entities/item_entities/item_entity.dart';
import '../models/item_models/item_model.dart';

class ItemMapper extends Mapper<ItemsModel, Items>{
  ItemMapper({required this.imageMapper, required this.colorsMapper, required this.categoryMapper});
  
  final ImageMapper imageMapper;
  final ColorsMapper colorsMapper;
  final CategoryMapper categoryMapper;
  @override
  Items? map(ItemsModel? entity) {
    return Items(
        id: entity?.id,
        title: entity?.title,
        slug: entity?.slug,
        image: imageMapper.map(entity?.image),
        price: entity?.price,
        colors: colorsMapper.mapList(entity?.colors),
        category: categoryMapper.map(entity?.category),
    );
  }

}