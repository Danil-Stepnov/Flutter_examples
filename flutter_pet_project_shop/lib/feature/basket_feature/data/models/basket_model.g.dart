// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketModel _$$_BasketModelFromJson(Map<String, dynamic> json) =>
    _$_BasketModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => BasketItemsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : BasketUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BasketModelToJson(_$_BasketModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'user': instance.user,
    };
