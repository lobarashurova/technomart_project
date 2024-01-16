// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) {
  return _SliderModel.fromJson(json);
}

/// @nodoc
mixin _$SliderModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  SliderData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderModelCopyWith<SliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderModelCopyWith<$Res> {
  factory $SliderModelCopyWith(
          SliderModel value, $Res Function(SliderModel) then) =
      _$SliderModelCopyWithImpl<$Res, SliderModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, SliderData data});

  $SliderDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SliderModelCopyWithImpl<$Res, $Val extends SliderModel>
    implements $SliderModelCopyWith<$Res> {
  _$SliderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SliderData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SliderDataCopyWith<$Res> get data {
    return $SliderDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SliderModelImplCopyWith<$Res>
    implements $SliderModelCopyWith<$Res> {
  factory _$$SliderModelImplCopyWith(
          _$SliderModelImpl value, $Res Function(_$SliderModelImpl) then) =
      __$$SliderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, SliderData data});

  @override
  $SliderDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SliderModelImplCopyWithImpl<$Res>
    extends _$SliderModelCopyWithImpl<$Res, _$SliderModelImpl>
    implements _$$SliderModelImplCopyWith<$Res> {
  __$$SliderModelImplCopyWithImpl(
      _$SliderModelImpl _value, $Res Function(_$SliderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = null,
  }) {
    return _then(_$SliderModelImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SliderData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderModelImpl implements _SliderModel {
  const _$SliderModelImpl(this.success, this.message, this.code, this.data);

  factory _$SliderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final SliderData data;

  @override
  String toString() {
    return 'SliderModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderModelImplCopyWith<_$SliderModelImpl> get copyWith =>
      __$$SliderModelImplCopyWithImpl<_$SliderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderModelImplToJson(
      this,
    );
  }
}

abstract class _SliderModel implements SliderModel {
  const factory _SliderModel(final bool? success, final String? message,
      final int? code, final SliderData data) = _$SliderModelImpl;

  factory _SliderModel.fromJson(Map<String, dynamic> json) =
      _$SliderModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  SliderData get data;
  @override
  @JsonKey(ignore: true)
  _$$SliderModelImplCopyWith<_$SliderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderData _$SliderDataFromJson(Map<String, dynamic> json) {
  return _SliderData.fromJson(json);
}

/// @nodoc
mixin _$SliderData {
  List<SliderItemData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderDataCopyWith<SliderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderDataCopyWith<$Res> {
  factory $SliderDataCopyWith(
          SliderData value, $Res Function(SliderData) then) =
      _$SliderDataCopyWithImpl<$Res, SliderData>;
  @useResult
  $Res call({List<SliderItemData>? data});
}

/// @nodoc
class _$SliderDataCopyWithImpl<$Res, $Val extends SliderData>
    implements $SliderDataCopyWith<$Res> {
  _$SliderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SliderItemData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderDataImplCopyWith<$Res>
    implements $SliderDataCopyWith<$Res> {
  factory _$$SliderDataImplCopyWith(
          _$SliderDataImpl value, $Res Function(_$SliderDataImpl) then) =
      __$$SliderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SliderItemData>? data});
}

/// @nodoc
class __$$SliderDataImplCopyWithImpl<$Res>
    extends _$SliderDataCopyWithImpl<$Res, _$SliderDataImpl>
    implements _$$SliderDataImplCopyWith<$Res> {
  __$$SliderDataImplCopyWithImpl(
      _$SliderDataImpl _value, $Res Function(_$SliderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SliderDataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SliderItemData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderDataImpl implements _SliderData {
  const _$SliderDataImpl(final List<SliderItemData>? data) : _data = data;

  factory _$SliderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderDataImplFromJson(json);

  final List<SliderItemData>? _data;
  @override
  List<SliderItemData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SliderData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderDataImplCopyWith<_$SliderDataImpl> get copyWith =>
      __$$SliderDataImplCopyWithImpl<_$SliderDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderDataImplToJson(
      this,
    );
  }
}

abstract class _SliderData implements SliderData {
  const factory _SliderData(final List<SliderItemData>? data) =
      _$SliderDataImpl;

  factory _SliderData.fromJson(Map<String, dynamic> json) =
      _$SliderDataImpl.fromJson;

  @override
  List<SliderItemData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SliderDataImplCopyWith<_$SliderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderItemData _$SliderItemDataFromJson(Map<String, dynamic> json) {
  return _SliderItemData.fromJson(json);
}

/// @nodoc
mixin _$SliderItemData {
  int? get id => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageWeb => throw _privateConstructorUsedError;
  String? get imageMobileWeb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderItemDataCopyWith<SliderItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderItemDataCopyWith<$Res> {
  factory $SliderItemDataCopyWith(
          SliderItemData value, $Res Function(SliderItemData) then) =
      _$SliderItemDataCopyWithImpl<$Res, SliderItemData>;
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class _$SliderItemDataCopyWithImpl<$Res, $Val extends SliderItemData>
    implements $SliderItemDataCopyWith<$Res> {
  _$SliderItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWeb: freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      imageMobileWeb: freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderItemDataImplCopyWith<$Res>
    implements $SliderItemDataCopyWith<$Res> {
  factory _$$SliderItemDataImplCopyWith(_$SliderItemDataImpl value,
          $Res Function(_$SliderItemDataImpl) then) =
      __$$SliderItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class __$$SliderItemDataImplCopyWithImpl<$Res>
    extends _$SliderItemDataCopyWithImpl<$Res, _$SliderItemDataImpl>
    implements _$$SliderItemDataImplCopyWith<$Res> {
  __$$SliderItemDataImplCopyWithImpl(
      _$SliderItemDataImpl _value, $Res Function(_$SliderItemDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_$SliderItemDataImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SliderItemDataImpl implements _SliderItemData {
  const _$SliderItemDataImpl(
      this.id, this.link, this.title, this.imageWeb, this.imageMobileWeb);

  factory _$SliderItemDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderItemDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? link;
  @override
  final String? title;
  @override
  final String? imageWeb;
  @override
  final String? imageMobileWeb;

  @override
  String toString() {
    return 'SliderItemData(id: $id, link: $link, title: $title, imageWeb: $imageWeb, imageMobileWeb: $imageMobileWeb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderItemDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageWeb, imageWeb) ||
                other.imageWeb == imageWeb) &&
            (identical(other.imageMobileWeb, imageMobileWeb) ||
                other.imageMobileWeb == imageMobileWeb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, link, title, imageWeb, imageMobileWeb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderItemDataImplCopyWith<_$SliderItemDataImpl> get copyWith =>
      __$$SliderItemDataImplCopyWithImpl<_$SliderItemDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderItemDataImplToJson(
      this,
    );
  }
}

abstract class _SliderItemData implements SliderItemData {
  const factory _SliderItemData(
      final int? id,
      final String? link,
      final String? title,
      final String? imageWeb,
      final String? imageMobileWeb) = _$SliderItemDataImpl;

  factory _SliderItemData.fromJson(Map<String, dynamic> json) =
      _$SliderItemDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get link;
  @override
  String? get title;
  @override
  String? get imageWeb;
  @override
  String? get imageMobileWeb;
  @override
  @JsonKey(ignore: true)
  _$$SliderItemDataImplCopyWith<_$SliderItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
