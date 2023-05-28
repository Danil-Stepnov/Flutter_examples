// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListItemsModel _$$_ListItemsModelFromJson(Map<String, dynamic> json) =>
    _$_ListItemsModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListItemsModelToJson(_$_ListItemsModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pagination': instance.pagination,
    };
