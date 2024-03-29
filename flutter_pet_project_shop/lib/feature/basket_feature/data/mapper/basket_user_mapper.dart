import 'package:flutter_pet_project_shop/feature/basket_feature/data/models/basket_user_model.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/domain/entities/basket_entities/user_for_get_basket.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';

class BasketUserMapper extends Mapper<BasketUserModel, UserInformationEnt> {
  @override
  UserInformationEnt? map(BasketUserModel? entity) {
    return UserInformationEnt(
      id: entity?.id,
      accessKey: entity?.accessKey,
    );
  }
}
