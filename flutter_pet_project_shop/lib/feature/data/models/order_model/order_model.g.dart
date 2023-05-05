// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      basket: json['basket'] == null
          ? null
          : BasketModel.fromJson(json['basket'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : BasketUserModel.fromJson(json['user'] as Map<String, dynamic>),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'basket': instance.basket,
      'user': instance.user,
      'totalPrice': instance.totalPrice,
      'comment': instance.comment,
      'status': instance.status,
    };
