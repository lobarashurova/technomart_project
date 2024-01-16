// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopCategoriesModelImpl _$$TopCategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCategoriesModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      json['data'] == null
          ? null
          : TopCategoriesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopCategoriesModelImplToJson(
        _$TopCategoriesModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$TopCategoriesDataImpl _$$TopCategoriesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCategoriesDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => TopCategoriesItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopCategoriesDataImplToJson(
        _$TopCategoriesDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$TopCategoriesItemImpl _$$TopCategoriesItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCategoriesItemImpl(
      json['title'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$$TopCategoriesItemImplToJson(
        _$TopCategoriesItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'slug': instance.slug,
    };
