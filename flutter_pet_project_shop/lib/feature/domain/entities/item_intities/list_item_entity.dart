import 'package:equatable/equatable.dart';
import 'item_entity.dart';

class ListItemsEnt extends Equatable {
  final List<Items> items;

  const ListItemsEnt({
    required this.items,
  });

  @override
  List<Object?> get props => [items];
}
