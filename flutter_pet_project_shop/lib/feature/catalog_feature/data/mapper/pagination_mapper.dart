import 'package:flutter_pet_project_shop/feature/catalog_feature/data/models/item_models/pagination_model.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/domain/entities/item_entities/pagination.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';

class PaginationMapper extends Mapper<PaginationModel, Pagination> {
  @override
  Pagination? map(PaginationModel? entity) {
    return Pagination(
      total: entity?.total ?? 1,
      page: entity?.page ?? 1,
      pages: entity?.pages ?? 1,
    );
  }
}
