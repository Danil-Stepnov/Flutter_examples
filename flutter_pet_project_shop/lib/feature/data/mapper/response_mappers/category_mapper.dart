import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/models/categories_models/category_model.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/categories_entities/category_entity.dart';

class CategoryMapper extends Mapper<CategoryModel, CategoryEnt> {
  @override
  CategoryEnt? map(CategoryModel? entity) {
    return CategoryEnt(
      id: entity?.id,
      title: entity?.title,
      slug: entity?.slug,
    );
  }
}
