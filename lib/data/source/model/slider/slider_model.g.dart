// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SliderModelImpl _$$SliderModelImplFromJson(Map<String, dynamic> json) =>
    _$SliderModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      SliderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SliderModelImplToJson(_$SliderModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$SliderDataImpl _$$SliderDataImplFromJson(Map<String, dynamic> json) =>
    _$SliderDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => SliderItemData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SliderDataImplToJson(_$SliderDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$SliderItemDataImpl _$$SliderItemDataImplFromJson(Map<String, dynamic> json) =>
    _$SliderItemDataImpl(
      json['id'] as int?,
      json['link'] as String?,
      json['title'] as String?,
      json['image_web'] as String?,
      json['image_mobile_web'] as String?,
    );

Map<String, dynamic> _$$SliderItemDataImplToJson(
        _$SliderItemDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'title': instance.title,
      'image_web': instance.imageWeb,
      'image_mobile_web': instance.imageMobileWeb,
    };
