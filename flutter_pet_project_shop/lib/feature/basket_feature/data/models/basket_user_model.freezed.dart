// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketUserModel _$BasketUserModelFromJson(Map<String, dynamic> json) {
  return _BasketUserModel.fromJson(json);
}

/// @nodoc
mixin _$BasketUserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get accessKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketUserModelCopyWith<BasketUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketUserModelCopyWith<$Res> {
  factory $BasketUserModelCopyWith(
          BasketUserModel value, $Res Function(BasketUserModel) then) =
      _$BasketUserModelCopyWithImpl<$Res, BasketUserModel>;
  @useResult
  $Res call({int? id, String? accessKey});
}

/// @nodoc
class _$BasketUserModelCopyWithImpl<$Res, $Val extends BasketUserModel>
    implements $BasketUserModelCopyWith<$Res> {
  _$BasketUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accessKey = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasketUserModelCopyWith<$Res>
    implements $BasketUserModelCopyWith<$Res> {
  factory _$$_BasketUserModelCopyWith(
          _$_BasketUserModel value, $Res Function(_$_BasketUserModel) then) =
      __$$_BasketUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? accessKey});
}

/// @nodoc
class __$$_BasketUserModelCopyWithImpl<$Res>
    extends _$BasketUserModelCopyWithImpl<$Res, _$_BasketUserModel>
    implements _$$_BasketUserModelCopyWith<$Res> {
  __$$_BasketUserModelCopyWithImpl(
      _$_BasketUserModel _value, $Res Function(_$_BasketUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accessKey = freezed,
  }) {
    return _then(_$_BasketUserModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketUserModel implements _BasketUserModel {
  const _$_BasketUserModel({required this.id, required this.accessKey});

  factory _$_BasketUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_BasketUserModelFromJson(json);

  @override
  final int? id;
  @override
  final String? accessKey;

  @override
  String toString() {
    return 'BasketUserModel(id: $id, accessKey: $accessKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accessKey, accessKey) ||
                other.accessKey == accessKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accessKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketUserModelCopyWith<_$_BasketUserModel> get copyWith =>
      __$$_BasketUserModelCopyWithImpl<_$_BasketUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketUserModelToJson(
      this,
    );
  }
}

abstract class _BasketUserModel implements BasketUserModel {
  const factory _BasketUserModel(
      {required final int? id,
      required final String? accessKey}) = _$_BasketUserModel;

  factory _BasketUserModel.fromJson(Map<String, dynamic> json) =
      _$_BasketUserModel.fromJson;

  @override
  int? get id;
  @override
  String? get accessKey;
  @override
  @JsonKey(ignore: true)
  _$$_BasketUserModelCopyWith<_$_BasketUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
