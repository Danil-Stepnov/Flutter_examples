// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) {
  return _StatusModel.fromJson(json);
}

/// @nodoc
mixin _$StatusModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusModelCopyWith<StatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusModelCopyWith<$Res> {
  factory $StatusModelCopyWith(
          StatusModel value, $Res Function(StatusModel) then) =
      _$StatusModelCopyWithImpl<$Res, StatusModel>;
  @useResult
  $Res call({int? id, String? title, String? code});
}

/// @nodoc
class _$StatusModelCopyWithImpl<$Res, $Val extends StatusModel>
    implements $StatusModelCopyWith<$Res> {
  _$StatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusModelCopyWith<$Res>
    implements $StatusModelCopyWith<$Res> {
  factory _$$_StatusModelCopyWith(
          _$_StatusModel value, $Res Function(_$_StatusModel) then) =
      __$$_StatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? code});
}

/// @nodoc
class __$$_StatusModelCopyWithImpl<$Res>
    extends _$StatusModelCopyWithImpl<$Res, _$_StatusModel>
    implements _$$_StatusModelCopyWith<$Res> {
  __$$_StatusModelCopyWithImpl(
      _$_StatusModel _value, $Res Function(_$_StatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_StatusModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusModel implements _StatusModel {
  const _$_StatusModel(
      {required this.id, required this.title, required this.code});

  factory _$_StatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_StatusModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? code;

  @override
  String toString() {
    return 'StatusModel(id: $id, title: $title, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusModelCopyWith<_$_StatusModel> get copyWith =>
      __$$_StatusModelCopyWithImpl<_$_StatusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusModelToJson(
      this,
    );
  }
}

abstract class _StatusModel implements StatusModel {
  const factory _StatusModel(
      {required final int? id,
      required final String? title,
      required final String? code}) = _$_StatusModel;

  factory _StatusModel.fromJson(Map<String, dynamic> json) =
      _$_StatusModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_StatusModelCopyWith<_$_StatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
