import 'package:freezed_annotation/freezed_annotation.dart';


part 'product_model_by_id.freezed.dart';

part 'product_model_by_id.g.dart';

@freezed
class ProductModelById with _$ProductModelById {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory ProductModelById(
    bool? success,
    String? message,
    int? code,
    ProductModelData? data,
  ) = _ProductModelById;

  factory ProductModelById.fromJson(Map<String, dynamic> json) =>
      _$ProductModelByIdFromJson(json);
}

@freezed
class ProductModelData with _$ProductModelData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory ProductModelData(ProductData? data) = _ProductModelData;

  factory ProductModelData.fromJson(Map<String, dynamic> json) =>
      _$ProductModelDataFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory ProductData(
    int? id,
    String? name,
    String? guarantee,
    dynamic catalog,
    List<String>? smallImages,
    List<String>? largeImages,
    dynamic availability,
    dynamic model,
    dynamic brand,
    int? salePrice,
    int? loanPrice,
    dynamic oldPrice,
    String? monthlyPrice,
    String? code,
    List<dynamic>? saleMonths,
    int? reviewsCount,
    dynamic reviewsMiddleRating,
    dynamic seo,
    List<dynamic>? stickers,
    List<dynamic>? mainCharacters,
    List<dynamic>? offersByImage,
    List<dynamic>? offersByCharacter,
    List<dynamic>? breadcrumbs,
    String? description,
    dynamic overview,
    List<PurpleCharacter>? characters,
    List<dynamic>? availableStores,
    List<dynamic>? files,
    List<dynamic>? accessories,
  ) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class PurpleCharacter with _$PurpleCharacter {
  const factory PurpleCharacter(
  String name,
  List<MainCharacterElement> characters,
      ) = _PurpleCharacter;

  factory PurpleCharacter.fromJson(Map<String, dynamic> json) =>
      _$PurpleCharacterFromJson(json);
}

@freezed
class MainCharacterElement with _$MainCharacterElement {
  const factory MainCharacterElement(
  String name,
  String value,

  ) = _MainCharacterElement;

  factory MainCharacterElement.fromJson(Map<String, dynamic> json) =>
      _$MainCharacterElementFromJson(json);
}