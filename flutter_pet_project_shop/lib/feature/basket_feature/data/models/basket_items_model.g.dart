// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketItemsModel _$$_BasketItemsModelFromJson(Map<String, dynamic> json) =>
    _$_BasketItemsModel(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      product: json['product'] == null
          ? null
          : ItemsModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BasketItemsModelToJson(_$_BasketItemsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'product': instance.product,
    };
