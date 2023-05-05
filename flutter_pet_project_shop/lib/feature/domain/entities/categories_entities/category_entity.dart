import 'package:equatable/equatable.dart';

class CategoryEnt extends Equatable {
  final int? id;
  final String? title;
  final String? slug;

  const CategoryEnt({
    required this.id,
    required this.title,
    required this.slug,
  });

  @override
  List<Object?> get props => [id, title, slug];

  CategoryEnt copyWith({
    int? id,
    String? title,
    String? slug,
  }) {
    return CategoryEnt(
      id: id ?? this.id,
      title: title ?? this.title,
      slug: slug ?? this.slug,
    );
  }
}
