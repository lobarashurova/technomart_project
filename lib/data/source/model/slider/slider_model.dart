import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_model.freezed.dart';
part 'slider_model.g.dart';

@freezed
class SliderModel with _$SliderModel {
  const factory SliderModel(
  bool? success,
  String? message,
  int? code,
  SliderData data,
      ) = _SliderModel;

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);
}

@freezed
class SliderData with _$SliderData {
  const factory SliderData(
  List<SliderItemData>? data
      ) = _SliderData;

  factory SliderData.fromJson(Map<String, dynamic> json) =>
      _$SliderDataFromJson(json);
}

@freezed
class SliderItemData with _$SliderItemData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory SliderItemData(
  int? id,
  String? link,
  String? title,
  String? imageWeb,
  String? imageMobileWeb,
      ) = _SliderItemData;
  factory SliderItemData.fromJson(Map<String, dynamic> json) =>
      _$SliderItemDataFromJson(json);
}