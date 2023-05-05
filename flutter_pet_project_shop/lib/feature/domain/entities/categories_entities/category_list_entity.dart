import 'package:equatable/equatable.dart';

import 'category_entity.dart';

class CategoryListEnt extends Equatable {
  final List<CategoryEnt> items;

  const CategoryListEnt({required this.items});

  @override
  List<Object?> get props => [items];
}
