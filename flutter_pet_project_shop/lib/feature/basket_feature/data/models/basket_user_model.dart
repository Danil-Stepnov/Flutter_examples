import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_user_model.freezed.dart';

part 'basket_user_model.g.dart';

@freezed
class BasketUserModel with _$BasketUserModel {
  const factory BasketUserModel({
    required int? id,
    required String? accessKey,
  }) = _BasketUserModel;

  factory BasketUserModel.fromJson(Map<String, dynamic> json) =>
      _$BasketUserModelFromJson(json);
}
