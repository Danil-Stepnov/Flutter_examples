import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/data_sources/base_store.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/data_sources/user_basket_store.dart';

class Store extends BaseStore with UserBasketStore{
  const Store(SharedPreferences sharedPreferences) : super (sharedPreferences);
}