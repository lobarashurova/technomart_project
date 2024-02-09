// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelByIdImpl _$$ProductModelByIdImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductModelByIdImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      json['data'] == null
          ? null
          : ProductModelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelByIdImplToJson(
        _$ProductModelByIdImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$ProductModelDataImpl _$$ProductModelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductModelDataImpl(
      json['data'] == null
          ? null
          : ProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelDataImplToJson(
        _$ProductModelDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      json['id'] as int?,
      json['name'] as String?,
      json['guarantee'] as String?,
      json['catalog'],
      (json['small_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['large_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['availability'],
      json['model'],
      json['brand'],
      json['sale_price'] as int?,
      json['loan_price'] as int?,
      json['old_price'],
      json['monthly_price'] as String?,
      json['code'] as String?,
      json['sale_months'] as List<dynamic>?,
      json['reviews_count'] as int?,
      json['reviews_middle_rating'],
      json['seo'],
      json['stickers'] as List<dynamic>?,
      json['main_characters'] as List<dynamic>?,
      json['offers_by_image'] as List<dynamic>?,
      json['offers_by_character'] as List<dynamic>?,
      json['breadcrumbs'] as List<dynamic>?,
      json['description'] as String?,
      json['overview'],
      (json['characters'] as List<dynamic>?)
          ?.map((e) => PurpleCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['available_stores'] as List<dynamic>?,
      json['files'] as List<dynamic>?,
      json['accessories'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guarantee': instance.guarantee,
      'catalog': instance.catalog,
      'small_images': instance.smallImages,
      'large_images': instance.largeImages,
      'availability': instance.availability,
      'model': instance.model,
      'brand': instance.brand,
      'sale_price': instance.salePrice,
      'loan_price': instance.loanPrice,
      'old_price': instance.oldPrice,
      'monthly_price': instance.monthlyPrice,
      'code': instance.code,
      'sale_months': instance.saleMonths,
      'reviews_count': instance.reviewsCount,
      'reviews_middle_rating': instance.reviewsMiddleRating,
      'seo': instance.seo,
      'stickers': instance.stickers,
      'main_characters': instance.mainCharacters,
      'offers_by_image': instance.offersByImage,
      'offers_by_character': instance.offersByCharacter,
      'breadcrumbs': instance.breadcrumbs,
      'description': instance.description,
      'overview': instance.overview,
      'characters': instance.characters?.map((e) => e.toJson()).toList(),
      'available_stores': instance.availableStores,
      'files': instance.files,
      'accessories': instance.accessories,
    };

_$PurpleCharacterImpl _$$PurpleCharacterImplFromJson(
        Map<String, dynamic> json) =>
    _$PurpleCharacterImpl(
      json['name'] as String,
      (json['characters'] as List<dynamic>)
          .map((e) => MainCharacterElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PurpleCharacterImplToJson(
        _$PurpleCharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'characters': instance.characters,
    };

_$MainCharacterElementImpl _$$MainCharacterElementImplFromJson(
        Map<String, dynamic> json) =>
    _$MainCharacterElementImpl(
      json['name'] as String,
      json['value'] as String,
    );

Map<String, dynamic> _$$MainCharacterElementImplToJson(
        _$MainCharacterElementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
