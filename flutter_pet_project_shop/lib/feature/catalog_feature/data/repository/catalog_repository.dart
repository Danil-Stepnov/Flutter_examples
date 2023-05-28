import 'dart:convert';

import 'package:flutter_pet_project_shop/constants.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/item_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/models/item_models/item_model.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/domain/entities/item_entities/item_entity.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/domain/entities/item_entities/list_item_entity.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/domain/repositories/item_repository/item_repository.dart';

import 'package:http/http.dart' as http;

import '../mapper/list_item_mapper.dart';
import '../models/item_models/list_item_model.dart';

class CatalogRequestFailure implements Exception {}

class CatalogRepository implements ItemRepository {
  static const _baseUrl = 'vue-study.skillbox.cc';

  const CatalogRepository(this._listItemMapper);

  final ListItemMapper _listItemMapper;

  @override
  Future<ListItemsEnt?> getAllItems({required offset}) async {
    final catalogRequest = Uri.https(_baseUrl, '/api/products/',
        <String, String>{'page': '$offset', 'limit': '$paginationLimit'});
    final catalogResponse = await http.get(catalogRequest);
    var response = ListItemsModel.fromJson(json.decode(catalogResponse.body));

    if (catalogResponse.statusCode != 200) {
      throw CatalogRequestFailure();
    }

    final listItems = _listItemMapper.map(response);
    return listItems;

  }

  @override
  Future<List<Items>>? searchItem(String itemId) {
    throw UnimplementedError();
  }
}


