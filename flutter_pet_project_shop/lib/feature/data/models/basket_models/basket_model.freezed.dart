// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketModel _$BasketModelFromJson(Map<String, dynamic> json) {
  return _BasketModel.fromJson(json);
}

/// @nodoc
mixin _$BasketModel {
  List<BasketItemsModel>? get items => throw _privateConstructorUsedError;
  BasketUserModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketModelCopyWith<BasketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketModelCopyWith<$Res> {
  factory $BasketModelCopyWith(
          BasketModel value, $Res Function(BasketModel) then) =
      _$BasketModelCopyWithImpl<$Res, BasketModel>;
  @useResult
  $Res call({List<BasketItemsModel>? items, BasketUserModel? user});

  $BasketUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$BasketModelCopyWithImpl<$Res, $Val extends BasketModel>
    implements $BasketModelCopyWith<$Res> {
  _$BasketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BasketItemsModel>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BasketUserModel?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$_BasketModelCopyWith<$Res>
    implements $BasketModelCopyWith<$Res> {
  factory _$$_BasketModelCopyWith(
          _$_BasketModel value, $Res Function(_$_BasketModel) then) =
      __$$_BasketModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BasketItemsModel>? items, BasketUserModel? user});

  @override
  $BasketUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_BasketModelCopyWithImpl<$Res>
    extends _$BasketModelCopyWithImpl<$Res, _$_BasketModel>
    implements _$$_BasketModelCopyWith<$Res> {
  __$$_BasketModelCopyWithImpl(
      _$_BasketModel _value, $Res Function(_$_BasketModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_BasketModel(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BasketItemsModel>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BasketUserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketModel implements _BasketModel {
  const _$_BasketModel(
      {required final List<BasketItemsModel>? items, required this.user})
      : _items = items;

  factory _$_BasketModel.fromJson(Map<String, dynamic> json) =>
      _$$_BasketModelFromJson(json);

  final List<BasketItemsModel>? _items;
  @override
  List<BasketItemsModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BasketUserModel? user;

  @override
  String toString() {
    return 'BasketModel(items: $items, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketModel &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketModelCopyWith<_$_BasketModel> get copyWith =>
      __$$_BasketModelCopyWithImpl<_$_BasketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketModelToJson(
      this,
    );
  }
}

abstract class _BasketModel implements BasketModel {
  const factory _BasketModel(
      {required final List<BasketItemsModel>? items,
      required final BasketUserModel? user}) = _$_BasketModel;

  factory _BasketModel.fromJson(Map<String, dynamic> json) =
      _$_BasketModel.fromJson;

  @override
  List<BasketItemsModel>? get items;
  @override
  BasketUserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_BasketModelCopyWith<_$_BasketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
