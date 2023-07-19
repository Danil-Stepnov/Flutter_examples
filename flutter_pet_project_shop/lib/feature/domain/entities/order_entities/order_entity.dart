import 'package:flutter_pet_project_shop/feature/basket_feature/domain/entities/basket_entities/get_basket_entity.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/domain/entities/basket_entities/user_for_get_basket.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/order_entities/status_entity.dart';

class OrderEnt extends Equatable {
  final int? id;
  final String? name;
  final String? address;
  final String? phone;
  final String? email;
  final BasketEnt? basket;
  final UserInformationEnt? user;
  final double? totalPrice;
  final String? comment;
  final StatusEnt? status;

  const OrderEnt({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.basket,
    required this.user,
    required this.totalPrice,
    required this.comment,
    required this.status,
  });

  @override
  List<Object?> get props => [id, name, address, phone, email, basket, user, totalPrice, comment, status];
}
