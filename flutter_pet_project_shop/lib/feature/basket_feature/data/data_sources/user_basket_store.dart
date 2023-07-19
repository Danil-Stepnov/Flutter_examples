
import 'package:flutter_pet_project_shop/feature/basket_feature/data/data_sources/base_store.dart';

mixin UserBasketStore on BaseStore {
  static const userEmail = 'userEmail';
  static const accessKey = 'accessKey';
  static const orderId = 'orderId';

  String? getAccessKey() {
    return sharedPreferences.getString(accessKey);
  }

  Future<void> setAccessKey(String? value) async {
    await sharedPreferences.setString(accessKey, '$value');
  }

  String? getOrderId() {
    return sharedPreferences.getString(orderId);
  }

  Future<void> setOrderId(String? value) async {
    await sharedPreferences.setString(orderId, '$value');
  }

  String? getUserEmail() {
    return sharedPreferences.getString(userEmail);
  }

  Future<void> setUserEmail(String? value) async {
    await sharedPreferences.setString(userEmail, '$value');
  }

}