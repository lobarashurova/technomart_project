// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopProductsModelImpl _$$TopProductsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopProductsModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      json['data'] == null
          ? null
          : TopProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopProductsModelImplToJson(
        _$TopProductsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$TopProductDataImpl _$$TopProductDataImplFromJson(Map<String, dynamic> json) =>
    _$TopProductDataImpl(
      (json['data'] as List<dynamic>)
          .map((e) => TopProductItemData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopProductDataImplToJson(
        _$TopProductDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$TopProductItemDataImpl _$$TopProductItemDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopProductItemDataImpl(
      json['id'] as int?,
      json['name'] as String?,
      json['image'] as String?,
      json['availability'],
      json['axiom_monthly_price'] as String?,
      json['sale_price'] as int?,
      json['old_price'] as int?,
      json['reviews_count'] as int?,
      json['reviews_average'] as int?,
      json['all_count'] as int?,
      (json['stickers'] as List<dynamic>?)
          ?.map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sale_months'] as List<dynamic>?)
          ?.map((e) => SaleMonth.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopProductItemDataImplToJson(
        _$TopProductItemDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'availability': instance.availability,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'sale_price': instance.salePrice,
      'old_price': instance.oldPrice,
      'reviews_count': instance.reviewsCount,
      'reviews_average': instance.reviewsAverage,
      'all_count': instance.allCount,
      'stickers': instance.stickers?.map((e) => e.toJson()).toList(),
      'sale_months': instance.saleMonths?.map((e) => e.toJson()).toList(),
    };

_$SaleMonthImpl _$$SaleMonthImplFromJson(Map<String, dynamic> json) =>
    _$SaleMonthImpl(
      json['id'] as int?,
      json['key'] as String?,
      json['name'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$SaleMonthImplToJson(_$SaleMonthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'image': instance.image,
    };

_$StickerImpl _$$StickerImplFromJson(Map<String, dynamic> json) =>
    _$StickerImpl(
      json['name'] as String?,
      json['background_color'] as String?,
      json['text_color'] as String?,
      json['is_image'] as bool?,
      json['show_in_card'] as bool?,
      json['image'],
    );

Map<String, dynamic> _$$StickerImplToJson(_$StickerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'background_color': instance.backgroundColor,
      'text_color': instance.textColor,
      'is_image': instance.isImage,
      'show_in_card': instance.showInCard,
      'image': instance.image,
    };
