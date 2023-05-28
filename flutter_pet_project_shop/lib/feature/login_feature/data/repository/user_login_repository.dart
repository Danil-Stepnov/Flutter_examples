import 'dart:convert';

import 'package:flutter_pet_project_shop/feature/login_feature/data/models/user_login_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_pet_project_shop/feature/login_feature/data/mapper/user_login_mapper.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/domain/entities/user_login_entities.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/domain/repository/user_login_repository.dart';

class UserLoginRequestFailure implements Exception{}

class UserLoginRepositoryImpl implements UserLoginRepository {
  static const _baseUrl = 'vue-study.skillbox.cc';
  const UserLoginRepositoryImpl(this._userLoginMapper);

  final UserLoginMapper _userLoginMapper;

  @override
  Future<UserLoginEnt?> getUserAccessKey() async {

    final userAccessKeyRequest = Uri.https(_baseUrl, '/api/users/accessKey');
    final userAccessKeyResponse = await http.get(userAccessKeyRequest);
    var response = UserLoginModel.fromJson(json.decode(userAccessKeyResponse.body));

    if (userAccessKeyResponse.statusCode != 200) {
      throw UserLoginRequestFailure();
    }

    final userAccessKey = _userLoginMapper.map(response);
    return userAccessKey;
  }

}