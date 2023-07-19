import 'dart:async';
import 'dart:convert';

import 'package:flutter_pet_project_shop/feature/basket_feature/data/models/basket_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_pet_project_shop/feature/basket_feature/data/data_sources/store.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/mapper/basket_mapper.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/domain/entities/basket_entities/get_basket_entity.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/domain/repositories/basket_repository/basket_repository.dart';

class BasketRequestFailure implements Exception {}

class ChangeQuantityRequestFailure implements Exception {}

class PostToBasketRequestFailure implements Exception {}

class BasketRepositoryImpl implements BasketRepository {
  static const _baseUrl = 'vue-study.skillbox.cc';

  const BasketRepositoryImpl(this._basketMapper, this._store);

  final BasketMapper _basketMapper;
  final Store _store;

  @override
  Future<BasketEnt?>? getBasket() async {
    final getBasketRequest = Uri.https(_baseUrl, '/api/baskets/',
        <String, String>{'userAccessKey': '${_store.getAccessKey()}'});
    final getBasketResponse = await http.get(getBasketRequest, );

    var response = BasketModel.fromJson(json.decode(getBasketResponse.body));
    if (getBasketResponse.statusCode != 200) {
      throw BasketRequestFailure();
    }
    final basket = _basketMapper.map(response);
    return basket;
  }

  @override
  Future<void> changeQuantity(
      {required int? productId, required int? quantity}) async {
    final changeQuantityPutRequest = Uri.https(
        _baseUrl,
        '/api/baskets/products',
        <String, String>{'userAccessKey': '${_store.getAccessKey()}'});
    final changeQuantityPutResponse = await http.put(changeQuantityPutRequest,
        body: {'productId': '$productId', 'quantity': '$quantity'});
    //completer.complete(true);
    if (changeQuantityPutResponse.statusCode != 200) {
      throw ChangeQuantityRequestFailure();
    }
  }

  @override
  Future<void> deleteFromBasket({required int? productId}) async {
    final deleteFromBasketRequest = Uri.https(_baseUrl, '/api/baskets/products',
        <String, String>{'userAccessKey': '${_store.getAccessKey()}'});
    final deleteFromBasketResponse = await http.delete(deleteFromBasketRequest,
        body: {'productId': '$productId'});
    if (deleteFromBasketResponse.statusCode != 200) {
      throw PostToBasketRequestFailure();
    }
  }

  @override
  Future<void> postToBasket(
      {required int? productId, required int? quantity}) async {
    final postToBasketRequest = Uri.https(_baseUrl, '/api/baskets/products',
        <String, String>{'userAccessKey': '${_store.getAccessKey()}'});
    final postToBasketResponse = await http.post(postToBasketRequest,
        body: {'productId': '$productId', 'quantity': '$quantity'});
    if (postToBasketResponse.statusCode != 200) {
      throw PostToBasketRequestFailure();
    }
  }
}
