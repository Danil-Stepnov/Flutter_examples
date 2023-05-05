import 'package:flutter_pet_project_shop/feature/domain/entities/item_intities/list_item_entity.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/categories_entities/category_list_entity.dart';

abstract class CategoriesRepository {
  Future<CategoryListEnt>? getAllCategories();

  Future<ListItemsEnt>? getAllItemsFromCategory({required int? categoryId});
}