import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/models/order_model/status_model.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/order_entities/status_entity.dart';

class StatusMapper extends Mapper<StatusModel, StatusEnt> {
  @override
  StatusEnt? map(StatusModel? entity) {
    return StatusEnt(id: entity?.id, title: entity?.title, code: entity?.code);
  }
}