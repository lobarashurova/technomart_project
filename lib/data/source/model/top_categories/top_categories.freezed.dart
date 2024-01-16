// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopCategoriesModel _$TopCategoriesModelFromJson(Map<String, dynamic> json) {
  return _TopCategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$TopCategoriesModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  TopCategoriesData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCategoriesModelCopyWith<TopCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoriesModelCopyWith<$Res> {
  factory $TopCategoriesModelCopyWith(
          TopCategoriesModel value, $Res Function(TopCategoriesModel) then) =
      _$TopCategoriesModelCopyWithImpl<$Res, TopCategoriesModel>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, TopCategoriesData? data});

  $TopCategoriesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TopCategoriesModelCopyWithImpl<$Res, $Val extends TopCategoriesModel>
    implements $TopCategoriesModelCopyWith<$Res> {
  _$TopCategoriesModelCopyWithImpl(this._value, this._then);

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
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopCategoriesData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopCategoriesDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TopCategoriesDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopCategoriesModelImplCopyWith<$Res>
    implements $TopCategoriesModelCopyWith<$Res> {
  factory _$$TopCategoriesModelImplCopyWith(_$TopCategoriesModelImpl value,
          $Res Function(_$TopCategoriesModelImpl) then) =
      __$$TopCategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, TopCategoriesData? data});

  @override
  $TopCategoriesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TopCategoriesModelImplCopyWithImpl<$Res>
    extends _$TopCategoriesModelCopyWithImpl<$Res, _$TopCategoriesModelImpl>
    implements _$$TopCategoriesModelImplCopyWith<$Res> {
  __$$TopCategoriesModelImplCopyWithImpl(_$TopCategoriesModelImpl _value,
      $Res Function(_$TopCategoriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopCategoriesModelImpl(
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
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopCategoriesData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopCategoriesModelImpl implements _TopCategoriesModel {
  const _$TopCategoriesModelImpl(
      this.success, this.message, this.code, this.data);

  factory _$TopCategoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoriesModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final TopCategoriesData? data;

  @override
  String toString() {
    return 'TopCategoriesModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoriesModelImpl &&
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
  _$$TopCategoriesModelImplCopyWith<_$TopCategoriesModelImpl> get copyWith =>
      __$$TopCategoriesModelImplCopyWithImpl<_$TopCategoriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoriesModelImplToJson(
      this,
    );
  }
}

abstract class _TopCategoriesModel implements TopCategoriesModel {
  const factory _TopCategoriesModel(
      final bool? success,
      final String? message,
      final int? code,
      final TopCategoriesData? data) = _$TopCategoriesModelImpl;

  factory _TopCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$TopCategoriesModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  TopCategoriesData? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopCategoriesModelImplCopyWith<_$TopCategoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopCategoriesData _$TopCategoriesDataFromJson(Map<String, dynamic> json) {
  return _TopCategoriesData.fromJson(json);
}

/// @nodoc
mixin _$TopCategoriesData {
  List<TopCategoriesItem>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCategoriesDataCopyWith<TopCategoriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoriesDataCopyWith<$Res> {
  factory $TopCategoriesDataCopyWith(
          TopCategoriesData value, $Res Function(TopCategoriesData) then) =
      _$TopCategoriesDataCopyWithImpl<$Res, TopCategoriesData>;
  @useResult
  $Res call({List<TopCategoriesItem>? data});
}

/// @nodoc
class _$TopCategoriesDataCopyWithImpl<$Res, $Val extends TopCategoriesData>
    implements $TopCategoriesDataCopyWith<$Res> {
  _$TopCategoriesDataCopyWithImpl(this._value, this._then);

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
              as List<TopCategoriesItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCategoriesDataImplCopyWith<$Res>
    implements $TopCategoriesDataCopyWith<$Res> {
  factory _$$TopCategoriesDataImplCopyWith(_$TopCategoriesDataImpl value,
          $Res Function(_$TopCategoriesDataImpl) then) =
      __$$TopCategoriesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopCategoriesItem>? data});
}

/// @nodoc
class __$$TopCategoriesDataImplCopyWithImpl<$Res>
    extends _$TopCategoriesDataCopyWithImpl<$Res, _$TopCategoriesDataImpl>
    implements _$$TopCategoriesDataImplCopyWith<$Res> {
  __$$TopCategoriesDataImplCopyWithImpl(_$TopCategoriesDataImpl _value,
      $Res Function(_$TopCategoriesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TopCategoriesDataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopCategoriesItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopCategoriesDataImpl implements _TopCategoriesData {
  const _$TopCategoriesDataImpl(final List<TopCategoriesItem>? data)
      : _data = data;

  factory _$TopCategoriesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoriesDataImplFromJson(json);

  final List<TopCategoriesItem>? _data;
  @override
  List<TopCategoriesItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopCategoriesData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoriesDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCategoriesDataImplCopyWith<_$TopCategoriesDataImpl> get copyWith =>
      __$$TopCategoriesDataImplCopyWithImpl<_$TopCategoriesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoriesDataImplToJson(
      this,
    );
  }
}

abstract class _TopCategoriesData implements TopCategoriesData {
  const factory _TopCategoriesData(final List<TopCategoriesItem>? data) =
      _$TopCategoriesDataImpl;

  factory _TopCategoriesData.fromJson(Map<String, dynamic> json) =
      _$TopCategoriesDataImpl.fromJson;

  @override
  List<TopCategoriesItem>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopCategoriesDataImplCopyWith<_$TopCategoriesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopCategoriesItem _$TopCategoriesItemFromJson(Map<String, dynamic> json) {
  return _TopCategoriesItem.fromJson(json);
}

/// @nodoc
mixin _$TopCategoriesItem {
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCategoriesItemCopyWith<TopCategoriesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoriesItemCopyWith<$Res> {
  factory $TopCategoriesItemCopyWith(
          TopCategoriesItem value, $Res Function(TopCategoriesItem) then) =
      _$TopCategoriesItemCopyWithImpl<$Res, TopCategoriesItem>;
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class _$TopCategoriesItemCopyWithImpl<$Res, $Val extends TopCategoriesItem>
    implements $TopCategoriesItemCopyWith<$Res> {
  _$TopCategoriesItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCategoriesItemImplCopyWith<$Res>
    implements $TopCategoriesItemCopyWith<$Res> {
  factory _$$TopCategoriesItemImplCopyWith(_$TopCategoriesItemImpl value,
          $Res Function(_$TopCategoriesItemImpl) then) =
      __$$TopCategoriesItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class __$$TopCategoriesItemImplCopyWithImpl<$Res>
    extends _$TopCategoriesItemCopyWithImpl<$Res, _$TopCategoriesItemImpl>
    implements _$$TopCategoriesItemImplCopyWith<$Res> {
  __$$TopCategoriesItemImplCopyWithImpl(_$TopCategoriesItemImpl _value,
      $Res Function(_$TopCategoriesItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$TopCategoriesItemImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopCategoriesItemImpl implements _TopCategoriesItem {
  const _$TopCategoriesItemImpl(this.title, this.image, this.slug);

  factory _$TopCategoriesItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoriesItemImplFromJson(json);

  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? slug;

  @override
  String toString() {
    return 'TopCategoriesItem(title: $title, image: $image, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoriesItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCategoriesItemImplCopyWith<_$TopCategoriesItemImpl> get copyWith =>
      __$$TopCategoriesItemImplCopyWithImpl<_$TopCategoriesItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoriesItemImplToJson(
      this,
    );
  }
}

abstract class _TopCategoriesItem implements TopCategoriesItem {
  const factory _TopCategoriesItem(
          final String? title, final String? image, final String? slug) =
      _$TopCategoriesItemImpl;

  factory _TopCategoriesItem.fromJson(Map<String, dynamic> json) =
      _$TopCategoriesItemImpl.fromJson;

  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$TopCategoriesItemImplCopyWith<_$TopCategoriesItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
