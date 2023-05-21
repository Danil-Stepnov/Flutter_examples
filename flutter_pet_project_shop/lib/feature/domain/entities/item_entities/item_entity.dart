import 'package:equatable/equatable.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/categories_entities/category_entity.dart';
import 'color_entity.dart';
import 'image_entity.dart';

class Items extends Equatable {
  final int? id;
  final String? title;
  final String? slug;
  final ImageEnt? image;
  final double? price;
  final List<ColorsEnt> colors;
  final CategoryEnt? category;

  const Items({
    required this.id,
    required this.title,
    required this.slug,
    required this.image,
    required this.price,
    required this.colors,
    required this.category,
  });

  @override
  List<Object?> get props => [id, title, slug, image, price, colors, category];

  Items copyWith({
    int? id,
    String? title,
    String? slug,
    ImageEnt? image,
    double? price,
    List<ColorsEnt>? colors,
    CategoryEnt? category,
  }) {
    return Items(
      id: id ?? this.id,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      image: image ?? this.image,
      price: price ?? this.price,
      colors: colors ?? this.colors,
      category: category ?? this.category,
    );
  }
}
