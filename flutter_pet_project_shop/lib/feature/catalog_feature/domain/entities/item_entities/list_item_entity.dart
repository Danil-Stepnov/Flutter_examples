import 'package:equatable/equatable.dart';
import 'item_entity.dart';
import 'pagination.dart';

class ListItemsEnt extends Equatable {
  final List<Items> items;
  final Pagination? pagination;

  const ListItemsEnt({
    required this.items,
    required this.pagination,
  });

  @override
  List<Object?> get props => [items, pagination];
}
