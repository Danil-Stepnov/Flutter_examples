import 'package:flutter_pet_project_shop/feature/login_feature/domain/entities/user_login_entities.dart';

abstract class UserLoginRepository {
  Future<UserLoginEnt?> getUserAccessKey();
}