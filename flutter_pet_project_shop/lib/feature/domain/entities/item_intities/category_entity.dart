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
}
