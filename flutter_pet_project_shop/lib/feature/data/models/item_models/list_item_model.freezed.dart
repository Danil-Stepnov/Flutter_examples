// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListItemsModel _$ListItemsModelFromJson(Map<String, dynamic> json) {
  return _ListItemsModel.fromJson(json);
}

/// @nodoc
mixin _$ListItemsModel {
  List<ItemsModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListItemsModelCopyWith<ListItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemsModelCopyWith<$Res> {
  factory $ListItemsModelCopyWith(
          ListItemsModel value, $Res Function(ListItemsModel) then) =
      _$ListItemsModelCopyWithImpl<$Res, ListItemsModel>;
  @useResult
  $Res call({List<ItemsModel> items});
}

/// @nodoc
class _$ListItemsModelCopyWithImpl<$Res, $Val extends ListItemsModel>
    implements $ListItemsModelCopyWith<$Res> {
  _$ListItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListItemsModelCopyWith<$Res>
    implements $ListItemsModelCopyWith<$Res> {
  factory _$$_ListItemsModelCopyWith(
          _$_ListItemsModel value, $Res Function(_$_ListItemsModel) then) =
      __$$_ListItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemsModel> items});
}

/// @nodoc
class __$$_ListItemsModelCopyWithImpl<$Res>
    extends _$ListItemsModelCopyWithImpl<$Res, _$_ListItemsModel>
    implements _$$_ListItemsModelCopyWith<$Res> {
  __$$_ListItemsModelCopyWithImpl(
      _$_ListItemsModel _value, $Res Function(_$_ListItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_ListItemsModel(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListItemsModel implements _ListItemsModel {
  const _$_ListItemsModel({required final List<ItemsModel> items})
      : _items = items;

  factory _$_ListItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListItemsModelFromJson(json);

  final List<ItemsModel> _items;
  @override
  List<ItemsModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ListItemsModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListItemsModel &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListItemsModelCopyWith<_$_ListItemsModel> get copyWith =>
      __$$_ListItemsModelCopyWithImpl<_$_ListItemsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListItemsModelToJson(
      this,
    );
  }
}

abstract class _ListItemsModel implements ListItemsModel {
  const factory _ListItemsModel({required final List<ItemsModel> items}) =
      _$_ListItemsModel;

  factory _ListItemsModel.fromJson(Map<String, dynamic> json) =
      _$_ListItemsModel.fromJson;

  @override
  List<ItemsModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ListItemsModelCopyWith<_$_ListItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
