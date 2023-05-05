import 'package:equatable/equatable.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/item_intities/entities.dart';

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