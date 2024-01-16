import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_categories.g.dart';

part 'top_categories.freezed.dart';

@freezed
class TopCategoriesModel with _$TopCategoriesModel {
  const factory TopCategoriesModel(
  bool? success,
  String? message,
  int? code,
  TopCategoriesData? data,
      ) = _TopCategoriesModel;

  factory TopCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$TopCategoriesModelFromJson(json);
}

@freezed
class TopCategoriesData with _$TopCategoriesData {

  const factory TopCategoriesData(
  List<TopCategoriesItem>? data
      ) = _TopCategoriesData;

  factory TopCategoriesData.fromJson(Map<String, dynamic> json) =>
      _$TopCategoriesDataFromJson(json);

}

@freezed
class TopCategoriesItem with _$TopCategoriesItem {

  const factory TopCategoriesItem(
  String? title,
  String? image,
  String? slug,
      ) = _TopCategoriesItem;

  factory TopCategoriesItem.fromJson(Map<String, dynamic> json) =>
      _$TopCategoriesItemFromJson(json);
}