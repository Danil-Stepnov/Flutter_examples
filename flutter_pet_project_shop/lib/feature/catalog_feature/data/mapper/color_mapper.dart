import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/models/item_models/color_model.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/item_entities/color_entity.dart';

class ColorsMapper extends Mapper<ColorsModel, ColorsEnt> {
  @override
  ColorsEnt? map(ColorsModel? entity) {
    return ColorsEnt(
      id: entity?.id,
      title: entity?.title,
      code: entity?.code,
    );
  }
}
