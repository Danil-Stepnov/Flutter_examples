import 'package:flutter/cupertino.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/item_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/pagination_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/models/item_models/item_model.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/models/item_models/list_item_model.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/domain/entities/item_entities/list_item_entity.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';

class ListItemMapper extends Mapper<ListItemsModel, ListItemsEnt> {
  ListItemMapper({required this.itemMapper, required this.pagination});

  final ItemMapper itemMapper;
  final PaginationMapper pagination;

  @override
  ListItemsEnt? map(ListItemsModel? entity) {
    final List<ItemsModel>? items = entity?.items;
    return ListItemsEnt(
      items: items != null ? itemMapper.mapList(entity?.items) : [],
      pagination: pagination.map(entity?.pagination),
    );
  }
}
