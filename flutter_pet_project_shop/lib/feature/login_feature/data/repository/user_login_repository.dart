import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/data_sources/store.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/data/models/user_login_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_pet_project_shop/feature/login_feature/data/mapper/user_login_mapper.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/domain/entities/user_login_entities.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/domain/repository/user_login_repository.dart';

class UserLoginRequestFailure implements Exception{}

class UserLoginRepositoryImpl implements UserLoginRepository {
  static const _baseUrl = 'vue-study.skillbox.cc';
  const UserLoginRepositoryImpl(this._userLoginMapper, this._store);

  final UserLoginMapper _userLoginMapper;
  final Store _store;

  @override
  Future<UserLoginEnt?> getUserAccessKey() async {

    final userAccessKeyRequest = Uri.https(_baseUrl, '/api/users/accessKey');
    final userAccessKeyResponse = await http.get(userAccessKeyRequest);
    var response = UserLoginModel.fromJson(json.decode(userAccessKeyResponse.body));

    if (userAccessKeyResponse.statusCode != 200) {
      throw UserLoginRequestFailure();
    }

    final userAccessKey = _userLoginMapper.map(response);
    User? user = FirebaseAuth.instance.currentUser;
    String? currentUser = _store.getUserEmail();
    if (currentUser != user?.email) {
      await _store.setUserEmail(user?.email);
      await _store.setAccessKey(userAccessKey?.accessKey);
    }
    print(_store.getUserEmail());
    print(_store.getAccessKey());
    return userAccessKey;
  }


}