import 'package:equatable/equatable.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/domain/entities/item_entities/item_entity.dart';

class BasketItemsEnt extends Equatable {
  final int? id;
  final double? price;
  final int? quantity;
  final Items? product;

  const BasketItemsEnt({
    required this.id,
    required this.price,
    required this.quantity,
    required this.product,
  });

  @override
  List<Object?> get props => [id, price, quantity, product];
}