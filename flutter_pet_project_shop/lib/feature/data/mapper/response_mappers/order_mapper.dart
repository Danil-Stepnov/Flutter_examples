import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/response_mappers/basket_mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/response_mappers/basket_user_mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/response_mappers/status_mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/models/order_model/order_model.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/order_entities/order_entity.dart';

class OrderMapper extends Mapper<OrderModel, OrderEnt> {
  OrderMapper({
    required this.statusMapper,
    required this.basketMapper,
    required this.basketUserMapper,
  });

  final StatusMapper statusMapper;
  final BasketMapper basketMapper;
  final BasketUserMapper basketUserMapper;

  @override
  OrderEnt? map(OrderModel? entity) {
    return OrderEnt(
      id: entity?.id,
      name: entity?.name,
      address: entity?.address,
      phone: entity?.phone,
      email: entity?.email,
      basket: basketMapper.map(entity?.basket),
      user: basketUserMapper.map(entity?.user),
      totalPrice: entity?.totalPrice,
      comment: entity?.comment,
      status: statusMapper.map(entity?.status),
    );
  }
}
