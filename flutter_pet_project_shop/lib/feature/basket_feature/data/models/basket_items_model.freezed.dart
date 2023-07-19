// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketItemsModel _$BasketItemsModelFromJson(Map<String, dynamic> json) {
  return _BasketItemsModel.fromJson(json);
}

/// @nodoc
mixin _$BasketItemsModel {
  int? get id => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  ItemsModel? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketItemsModelCopyWith<BasketItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketItemsModelCopyWith<$Res> {
  factory $BasketItemsModelCopyWith(
          BasketItemsModel value, $Res Function(BasketItemsModel) then) =
      _$BasketItemsModelCopyWithImpl<$Res, BasketItemsModel>;
  @useResult
  $Res call({int? id, double? price, int? quantity, ItemsModel? product});

  $ItemsModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$BasketItemsModelCopyWithImpl<$Res, $Val extends BasketItemsModel>
    implements $BasketItemsModelCopyWith<$Res> {
  _$BasketItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ItemsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemsModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ItemsModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BasketItemsModelCopyWith<$Res>
    implements $BasketItemsModelCopyWith<$Res> {
  factory _$$_BasketItemsModelCopyWith(
          _$_BasketItemsModel value, $Res Function(_$_BasketItemsModel) then) =
      __$$_BasketItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, double? price, int? quantity, ItemsModel? product});

  @override
  $ItemsModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_BasketItemsModelCopyWithImpl<$Res>
    extends _$BasketItemsModelCopyWithImpl<$Res, _$_BasketItemsModel>
    implements _$$_BasketItemsModelCopyWith<$Res> {
  __$$_BasketItemsModelCopyWithImpl(
      _$_BasketItemsModel _value, $Res Function(_$_BasketItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_BasketItemsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ItemsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketItemsModel implements _BasketItemsModel {
  const _$_BasketItemsModel(
      {required this.id,
      required this.price,
      required this.quantity,
      required this.product});

  factory _$_BasketItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BasketItemsModelFromJson(json);

  @override
  final int? id;
  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final ItemsModel? product;

  @override
  String toString() {
    return 'BasketItemsModel(id: $id, price: $price, quantity: $quantity, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketItemsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, quantity, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketItemsModelCopyWith<_$_BasketItemsModel> get copyWith =>
      __$$_BasketItemsModelCopyWithImpl<_$_BasketItemsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketItemsModelToJson(
      this,
    );
  }
}

abstract class _BasketItemsModel implements BasketItemsModel {
  const factory _BasketItemsModel(
      {required final int? id,
      required final double? price,
      required final int? quantity,
      required final ItemsModel? product}) = _$_BasketItemsModel;

  factory _BasketItemsModel.fromJson(Map<String, dynamic> json) =
      _$_BasketItemsModel.fromJson;

  @override
  int? get id;
  @override
  double? get price;
  @override
  int? get quantity;
  @override
  ItemsModel? get product;
  @override
  @JsonKey(ignore: true)
  _$$_BasketItemsModelCopyWith<_$_BasketItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
