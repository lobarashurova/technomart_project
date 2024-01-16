import 'package:freezed_annotation/freezed_annotation.dart';


part 'top_products.freezed.dart';
part 'top_products.g.dart';

@freezed
class TopProductsModel with _$TopProductsModel {
  const factory TopProductsModel(
    bool? success,
    String? message,
    int? code,
    TopProductData? data,
  ) = _TopProductsModel;

  factory TopProductsModel.fromJson(Map<String, dynamic> json) =>
      _$TopProductsModelFromJson(json);
}

@freezed
class TopProductData with _$TopProductData {
  const factory TopProductData(List<TopProductItemData> data) = _TopProductData;

  factory TopProductData.fromJson(Map<String, dynamic> json) =>
      _$TopProductDataFromJson(json);
}

@freezed
class TopProductItemData with _$TopProductItemData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory TopProductItemData(
    int? id,
    String? name,
    String? image,
    dynamic availability,
    String? axiomMonthlyPrice,
    int? salePrice,
    int? oldPrice,
    int? reviewsCount,
    int? reviewsAverage,
    int? allCount,
    List<Sticker>? stickers,
    List<SaleMonth>? saleMonths,
  ) = _TopProductItemData;

  factory TopProductItemData.fromJson(Map<String, dynamic> json) =>
      _$TopProductItemDataFromJson(json);
}

@freezed
class SaleMonth with _$SaleMonth {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory SaleMonth(
    int? id,
    String? key,
    String? name,
    String? image,
  ) = _SaleMonth;

  factory SaleMonth.fromJson(Map<String, dynamic> json) =>
      _$SaleMonthFromJson(json);
}

@freezed
class Sticker with _$Sticker {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Sticker(
    String? name,
    String? backgroundColor,
    String? textColor,
    bool? isImage,
    bool? showInCard,
    dynamic image,
  ) = _Sticker;

  factory Sticker.fromJson(Map<String, dynamic> json) =>
      _$StickerFromJson(json);
}
