import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';

import '../../domain/entities/item_entities/color_entity.dart';
import '../models/item_models/color_model.dart';

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
