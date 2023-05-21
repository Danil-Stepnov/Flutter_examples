import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/domain/entities/user_login_entities.dart';

import '../models/user_login_model.dart';

class UserLoginMapper extends Mapper<UserLoginModel, UserLoginEnt> {
  @override
  UserLoginEnt? map(UserLoginModel? entity) {
    return UserLoginEnt(accessKey: entity?.accessKey);
  }
}
