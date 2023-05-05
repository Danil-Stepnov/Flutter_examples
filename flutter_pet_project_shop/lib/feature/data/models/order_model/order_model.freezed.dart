// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  BasketModel? get basket => throw _privateConstructorUsedError;
  BasketUserModel? get user => throw _privateConstructorUsedError;
  double? get totalPrice => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? phone,
      String? email,
      BasketModel? basket,
      BasketUserModel? user,
      double? totalPrice,
      String? comment,
      StatusModel? status});

  $BasketModelCopyWith<$Res>? get basket;
  $BasketUserModelCopyWith<$Res>? get user;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? basket = freezed,
    Object? user = freezed,
    Object? totalPrice = freezed,
    Object? comment = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      basket: freezed == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as BasketModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BasketUserModel?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketModelCopyWith<$Res>? get basket {
    if (_value.basket == null) {
      return null;
    }

    return $BasketModelCopyWith<$Res>(_value.basket!, (value) {
      return _then(_value.copyWith(basket: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $BasketUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? phone,
      String? email,
      BasketModel? basket,
      BasketUserModel? user,
      double? totalPrice,
      String? comment,
      StatusModel? status});

  @override
  $BasketModelCopyWith<$Res>? get basket;
  @override
  $BasketUserModelCopyWith<$Res>? get user;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? basket = freezed,
    Object? user = freezed,
    Object? totalPrice = freezed,
    Object? comment = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_OrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      basket: freezed == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as BasketModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BasketUserModel?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone,
      required this.email,
      required this.basket,
      required this.user,
      required this.totalPrice,
      required this.comment,
      required this.status});

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final BasketModel? basket;
  @override
  final BasketUserModel? user;
  @override
  final double? totalPrice;
  @override
  final String? comment;
  @override
  final StatusModel? status;

  @override
  String toString() {
    return 'OrderModel(id: $id, name: $name, address: $address, phone: $phone, email: $email, basket: $basket, user: $user, totalPrice: $totalPrice, comment: $comment, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.basket, basket) || other.basket == basket) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, phone, email,
      basket, user, totalPrice, comment, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final int? id,
      required final String? name,
      required final String? address,
      required final String? phone,
      required final String? email,
      required final BasketModel? basket,
      required final BasketUserModel? user,
      required final double? totalPrice,
      required final String? comment,
      required final StatusModel? status}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  BasketModel? get basket;
  @override
  BasketUserModel? get user;
  @override
  double? get totalPrice;
  @override
  String? get comment;
  @override
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
