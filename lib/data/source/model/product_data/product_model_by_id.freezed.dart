// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model_by_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModelById _$ProductModelByIdFromJson(Map<String, dynamic> json) {
  return _ProductModelById.fromJson(json);
}

/// @nodoc
mixin _$ProductModelById {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  ProductModelData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelByIdCopyWith<ProductModelById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelByIdCopyWith<$Res> {
  factory $ProductModelByIdCopyWith(
          ProductModelById value, $Res Function(ProductModelById) then) =
      _$ProductModelByIdCopyWithImpl<$Res, ProductModelById>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, ProductModelData? data});

  $ProductModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductModelByIdCopyWithImpl<$Res, $Val extends ProductModelById>
    implements $ProductModelByIdCopyWith<$Res> {
  _$ProductModelByIdCopyWithImpl(this._value, this._then);

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
              as ProductModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductModelDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelByIdImplCopyWith<$Res>
    implements $ProductModelByIdCopyWith<$Res> {
  factory _$$ProductModelByIdImplCopyWith(_$ProductModelByIdImpl value,
          $Res Function(_$ProductModelByIdImpl) then) =
      __$$ProductModelByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, ProductModelData? data});

  @override
  $ProductModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductModelByIdImplCopyWithImpl<$Res>
    extends _$ProductModelByIdCopyWithImpl<$Res, _$ProductModelByIdImpl>
    implements _$$ProductModelByIdImplCopyWith<$Res> {
  __$$ProductModelByIdImplCopyWithImpl(_$ProductModelByIdImpl _value,
      $Res Function(_$ProductModelByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProductModelByIdImpl(
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
              as ProductModelData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ProductModelByIdImpl implements _ProductModelById {
  const _$ProductModelByIdImpl(
      this.success, this.message, this.code, this.data);

  factory _$ProductModelByIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelByIdImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final ProductModelData? data;

  @override
  String toString() {
    return 'ProductModelById(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelByIdImpl &&
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
  _$$ProductModelByIdImplCopyWith<_$ProductModelByIdImpl> get copyWith =>
      __$$ProductModelByIdImplCopyWithImpl<_$ProductModelByIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelByIdImplToJson(
      this,
    );
  }
}

abstract class _ProductModelById implements ProductModelById {
  const factory _ProductModelById(final bool? success, final String? message,
      final int? code, final ProductModelData? data) = _$ProductModelByIdImpl;

  factory _ProductModelById.fromJson(Map<String, dynamic> json) =
      _$ProductModelByIdImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  ProductModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelByIdImplCopyWith<_$ProductModelByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModelData _$ProductModelDataFromJson(Map<String, dynamic> json) {
  return _ProductModelData.fromJson(json);
}

/// @nodoc
mixin _$ProductModelData {
  ProductData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelDataCopyWith<ProductModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelDataCopyWith<$Res> {
  factory $ProductModelDataCopyWith(
          ProductModelData value, $Res Function(ProductModelData) then) =
      _$ProductModelDataCopyWithImpl<$Res, ProductModelData>;
  @useResult
  $Res call({ProductData? data});

  $ProductDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductModelDataCopyWithImpl<$Res, $Val extends ProductModelData>
    implements $ProductModelDataCopyWith<$Res> {
  _$ProductModelDataCopyWithImpl(this._value, this._then);

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
              as ProductData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelDataImplCopyWith<$Res>
    implements $ProductModelDataCopyWith<$Res> {
  factory _$$ProductModelDataImplCopyWith(_$ProductModelDataImpl value,
          $Res Function(_$ProductModelDataImpl) then) =
      __$$ProductModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductData? data});

  @override
  $ProductDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductModelDataImplCopyWithImpl<$Res>
    extends _$ProductModelDataCopyWithImpl<$Res, _$ProductModelDataImpl>
    implements _$$ProductModelDataImplCopyWith<$Res> {
  __$$ProductModelDataImplCopyWithImpl(_$ProductModelDataImpl _value,
      $Res Function(_$ProductModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProductModelDataImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ProductModelDataImpl implements _ProductModelData {
  const _$ProductModelDataImpl(this.data);

  factory _$ProductModelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelDataImplFromJson(json);

  @override
  final ProductData? data;

  @override
  String toString() {
    return 'ProductModelData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelDataImplCopyWith<_$ProductModelDataImpl> get copyWith =>
      __$$ProductModelDataImplCopyWithImpl<_$ProductModelDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelDataImplToJson(
      this,
    );
  }
}

abstract class _ProductModelData implements ProductModelData {
  const factory _ProductModelData(final ProductData? data) =
      _$ProductModelDataImpl;

  factory _ProductModelData.fromJson(Map<String, dynamic> json) =
      _$ProductModelDataImpl.fromJson;

  @override
  ProductData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelDataImplCopyWith<_$ProductModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get guarantee => throw _privateConstructorUsedError;
  dynamic get catalog => throw _privateConstructorUsedError;
  List<String>? get smallImages => throw _privateConstructorUsedError;
  List<String>? get largeImages => throw _privateConstructorUsedError;
  dynamic get availability => throw _privateConstructorUsedError;
  dynamic get model => throw _privateConstructorUsedError;
  dynamic get brand => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  int? get loanPrice => throw _privateConstructorUsedError;
  dynamic get oldPrice => throw _privateConstructorUsedError;
  String? get monthlyPrice => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  List<dynamic>? get saleMonths => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  dynamic get reviewsMiddleRating => throw _privateConstructorUsedError;
  dynamic get seo => throw _privateConstructorUsedError;
  List<dynamic>? get stickers => throw _privateConstructorUsedError;
  List<dynamic>? get mainCharacters => throw _privateConstructorUsedError;
  List<dynamic>? get offersByImage => throw _privateConstructorUsedError;
  List<dynamic>? get offersByCharacter => throw _privateConstructorUsedError;
  List<dynamic>? get breadcrumbs => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  dynamic get overview => throw _privateConstructorUsedError;
  List<PurpleCharacter>? get characters => throw _privateConstructorUsedError;
  List<dynamic>? get availableStores => throw _privateConstructorUsedError;
  List<dynamic>? get files => throw _privateConstructorUsedError;
  List<dynamic>? get accessories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {int? id,
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
      List<dynamic>? accessories});
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? guarantee = freezed,
    Object? catalog = freezed,
    Object? smallImages = freezed,
    Object? largeImages = freezed,
    Object? availability = freezed,
    Object? model = freezed,
    Object? brand = freezed,
    Object? salePrice = freezed,
    Object? loanPrice = freezed,
    Object? oldPrice = freezed,
    Object? monthlyPrice = freezed,
    Object? code = freezed,
    Object? saleMonths = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsMiddleRating = freezed,
    Object? seo = freezed,
    Object? stickers = freezed,
    Object? mainCharacters = freezed,
    Object? offersByImage = freezed,
    Object? offersByCharacter = freezed,
    Object? breadcrumbs = freezed,
    Object? description = freezed,
    Object? overview = freezed,
    Object? characters = freezed,
    Object? availableStores = freezed,
    Object? files = freezed,
    Object? accessories = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      guarantee: freezed == guarantee
          ? _value.guarantee
          : guarantee // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog: freezed == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as dynamic,
      smallImages: freezed == smallImages
          ? _value.smallImages
          : smallImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      largeImages: freezed == largeImages
          ? _value.largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as dynamic,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as dynamic,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      loanPrice: freezed == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      monthlyPrice: freezed == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      saleMonths: freezed == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsMiddleRating: freezed == reviewsMiddleRating
          ? _value.reviewsMiddleRating
          : reviewsMiddleRating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seo: freezed == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stickers: freezed == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      mainCharacters: freezed == mainCharacters
          ? _value.mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      offersByImage: freezed == offersByImage
          ? _value.offersByImage
          : offersByImage // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      offersByCharacter: freezed == offersByCharacter
          ? _value.offersByCharacter
          : offersByCharacter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      breadcrumbs: freezed == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as dynamic,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<PurpleCharacter>?,
      availableStores: freezed == availableStores
          ? _value.availableStores
          : availableStores // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      accessories: freezed == accessories
          ? _value.accessories
          : accessories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      List<dynamic>? accessories});
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? guarantee = freezed,
    Object? catalog = freezed,
    Object? smallImages = freezed,
    Object? largeImages = freezed,
    Object? availability = freezed,
    Object? model = freezed,
    Object? brand = freezed,
    Object? salePrice = freezed,
    Object? loanPrice = freezed,
    Object? oldPrice = freezed,
    Object? monthlyPrice = freezed,
    Object? code = freezed,
    Object? saleMonths = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsMiddleRating = freezed,
    Object? seo = freezed,
    Object? stickers = freezed,
    Object? mainCharacters = freezed,
    Object? offersByImage = freezed,
    Object? offersByCharacter = freezed,
    Object? breadcrumbs = freezed,
    Object? description = freezed,
    Object? overview = freezed,
    Object? characters = freezed,
    Object? availableStores = freezed,
    Object? files = freezed,
    Object? accessories = freezed,
  }) {
    return _then(_$ProductDataImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == guarantee
          ? _value.guarantee
          : guarantee // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == smallImages
          ? _value._smallImages
          : smallImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == largeImages
          ? _value._largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsMiddleRating
          ? _value.reviewsMiddleRating
          : reviewsMiddleRating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == mainCharacters
          ? _value._mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == offersByImage
          ? _value._offersByImage
          : offersByImage // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == offersByCharacter
          ? _value._offersByCharacter
          : offersByCharacter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == breadcrumbs
          ? _value._breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<PurpleCharacter>?,
      freezed == availableStores
          ? _value._availableStores
          : availableStores // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == accessories
          ? _value._accessories
          : accessories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(
      this.id,
      this.name,
      this.guarantee,
      this.catalog,
      final List<String>? smallImages,
      final List<String>? largeImages,
      this.availability,
      this.model,
      this.brand,
      this.salePrice,
      this.loanPrice,
      this.oldPrice,
      this.monthlyPrice,
      this.code,
      final List<dynamic>? saleMonths,
      this.reviewsCount,
      this.reviewsMiddleRating,
      this.seo,
      final List<dynamic>? stickers,
      final List<dynamic>? mainCharacters,
      final List<dynamic>? offersByImage,
      final List<dynamic>? offersByCharacter,
      final List<dynamic>? breadcrumbs,
      this.description,
      this.overview,
      final List<PurpleCharacter>? characters,
      final List<dynamic>? availableStores,
      final List<dynamic>? files,
      final List<dynamic>? accessories)
      : _smallImages = smallImages,
        _largeImages = largeImages,
        _saleMonths = saleMonths,
        _stickers = stickers,
        _mainCharacters = mainCharacters,
        _offersByImage = offersByImage,
        _offersByCharacter = offersByCharacter,
        _breadcrumbs = breadcrumbs,
        _characters = characters,
        _availableStores = availableStores,
        _files = files,
        _accessories = accessories;

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? guarantee;
  @override
  final dynamic catalog;
  final List<String>? _smallImages;
  @override
  List<String>? get smallImages {
    final value = _smallImages;
    if (value == null) return null;
    if (_smallImages is EqualUnmodifiableListView) return _smallImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _largeImages;
  @override
  List<String>? get largeImages {
    final value = _largeImages;
    if (value == null) return null;
    if (_largeImages is EqualUnmodifiableListView) return _largeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic availability;
  @override
  final dynamic model;
  @override
  final dynamic brand;
  @override
  final int? salePrice;
  @override
  final int? loanPrice;
  @override
  final dynamic oldPrice;
  @override
  final String? monthlyPrice;
  @override
  final String? code;
  final List<dynamic>? _saleMonths;
  @override
  List<dynamic>? get saleMonths {
    final value = _saleMonths;
    if (value == null) return null;
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? reviewsCount;
  @override
  final dynamic reviewsMiddleRating;
  @override
  final dynamic seo;
  final List<dynamic>? _stickers;
  @override
  List<dynamic>? get stickers {
    final value = _stickers;
    if (value == null) return null;
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _mainCharacters;
  @override
  List<dynamic>? get mainCharacters {
    final value = _mainCharacters;
    if (value == null) return null;
    if (_mainCharacters is EqualUnmodifiableListView) return _mainCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _offersByImage;
  @override
  List<dynamic>? get offersByImage {
    final value = _offersByImage;
    if (value == null) return null;
    if (_offersByImage is EqualUnmodifiableListView) return _offersByImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _offersByCharacter;
  @override
  List<dynamic>? get offersByCharacter {
    final value = _offersByCharacter;
    if (value == null) return null;
    if (_offersByCharacter is EqualUnmodifiableListView)
      return _offersByCharacter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _breadcrumbs;
  @override
  List<dynamic>? get breadcrumbs {
    final value = _breadcrumbs;
    if (value == null) return null;
    if (_breadcrumbs is EqualUnmodifiableListView) return _breadcrumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final dynamic overview;
  final List<PurpleCharacter>? _characters;
  @override
  List<PurpleCharacter>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _availableStores;
  @override
  List<dynamic>? get availableStores {
    final value = _availableStores;
    if (value == null) return null;
    if (_availableStores is EqualUnmodifiableListView) return _availableStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _files;
  @override
  List<dynamic>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _accessories;
  @override
  List<dynamic>? get accessories {
    final value = _accessories;
    if (value == null) return null;
    if (_accessories is EqualUnmodifiableListView) return _accessories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductData(id: $id, name: $name, guarantee: $guarantee, catalog: $catalog, smallImages: $smallImages, largeImages: $largeImages, availability: $availability, model: $model, brand: $brand, salePrice: $salePrice, loanPrice: $loanPrice, oldPrice: $oldPrice, monthlyPrice: $monthlyPrice, code: $code, saleMonths: $saleMonths, reviewsCount: $reviewsCount, reviewsMiddleRating: $reviewsMiddleRating, seo: $seo, stickers: $stickers, mainCharacters: $mainCharacters, offersByImage: $offersByImage, offersByCharacter: $offersByCharacter, breadcrumbs: $breadcrumbs, description: $description, overview: $overview, characters: $characters, availableStores: $availableStores, files: $files, accessories: $accessories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.guarantee, guarantee) ||
                other.guarantee == guarantee) &&
            const DeepCollectionEquality().equals(other.catalog, catalog) &&
            const DeepCollectionEquality()
                .equals(other._smallImages, _smallImages) &&
            const DeepCollectionEquality()
                .equals(other._largeImages, _largeImages) &&
            const DeepCollectionEquality()
                .equals(other.availability, availability) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.loanPrice, loanPrice) ||
                other.loanPrice == loanPrice) &&
            const DeepCollectionEquality().equals(other.oldPrice, oldPrice) &&
            (identical(other.monthlyPrice, monthlyPrice) ||
                other.monthlyPrice == monthlyPrice) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            const DeepCollectionEquality()
                .equals(other.reviewsMiddleRating, reviewsMiddleRating) &&
            const DeepCollectionEquality().equals(other.seo, seo) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality()
                .equals(other._mainCharacters, _mainCharacters) &&
            const DeepCollectionEquality()
                .equals(other._offersByImage, _offersByImage) &&
            const DeepCollectionEquality()
                .equals(other._offersByCharacter, _offersByCharacter) &&
            const DeepCollectionEquality()
                .equals(other._breadcrumbs, _breadcrumbs) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._availableStores, _availableStores) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality()
                .equals(other._accessories, _accessories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        guarantee,
        const DeepCollectionEquality().hash(catalog),
        const DeepCollectionEquality().hash(_smallImages),
        const DeepCollectionEquality().hash(_largeImages),
        const DeepCollectionEquality().hash(availability),
        const DeepCollectionEquality().hash(model),
        const DeepCollectionEquality().hash(brand),
        salePrice,
        loanPrice,
        const DeepCollectionEquality().hash(oldPrice),
        monthlyPrice,
        code,
        const DeepCollectionEquality().hash(_saleMonths),
        reviewsCount,
        const DeepCollectionEquality().hash(reviewsMiddleRating),
        const DeepCollectionEquality().hash(seo),
        const DeepCollectionEquality().hash(_stickers),
        const DeepCollectionEquality().hash(_mainCharacters),
        const DeepCollectionEquality().hash(_offersByImage),
        const DeepCollectionEquality().hash(_offersByCharacter),
        const DeepCollectionEquality().hash(_breadcrumbs),
        description,
        const DeepCollectionEquality().hash(overview),
        const DeepCollectionEquality().hash(_characters),
        const DeepCollectionEquality().hash(_availableStores),
        const DeepCollectionEquality().hash(_files),
        const DeepCollectionEquality().hash(_accessories)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      final int? id,
      final String? name,
      final String? guarantee,
      final dynamic catalog,
      final List<String>? smallImages,
      final List<String>? largeImages,
      final dynamic availability,
      final dynamic model,
      final dynamic brand,
      final int? salePrice,
      final int? loanPrice,
      final dynamic oldPrice,
      final String? monthlyPrice,
      final String? code,
      final List<dynamic>? saleMonths,
      final int? reviewsCount,
      final dynamic reviewsMiddleRating,
      final dynamic seo,
      final List<dynamic>? stickers,
      final List<dynamic>? mainCharacters,
      final List<dynamic>? offersByImage,
      final List<dynamic>? offersByCharacter,
      final List<dynamic>? breadcrumbs,
      final String? description,
      final dynamic overview,
      final List<PurpleCharacter>? characters,
      final List<dynamic>? availableStores,
      final List<dynamic>? files,
      final List<dynamic>? accessories) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get guarantee;
  @override
  dynamic get catalog;
  @override
  List<String>? get smallImages;
  @override
  List<String>? get largeImages;
  @override
  dynamic get availability;
  @override
  dynamic get model;
  @override
  dynamic get brand;
  @override
  int? get salePrice;
  @override
  int? get loanPrice;
  @override
  dynamic get oldPrice;
  @override
  String? get monthlyPrice;
  @override
  String? get code;
  @override
  List<dynamic>? get saleMonths;
  @override
  int? get reviewsCount;
  @override
  dynamic get reviewsMiddleRating;
  @override
  dynamic get seo;
  @override
  List<dynamic>? get stickers;
  @override
  List<dynamic>? get mainCharacters;
  @override
  List<dynamic>? get offersByImage;
  @override
  List<dynamic>? get offersByCharacter;
  @override
  List<dynamic>? get breadcrumbs;
  @override
  String? get description;
  @override
  dynamic get overview;
  @override
  List<PurpleCharacter>? get characters;
  @override
  List<dynamic>? get availableStores;
  @override
  List<dynamic>? get files;
  @override
  List<dynamic>? get accessories;
  @override
  @JsonKey(ignore: true)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurpleCharacter _$PurpleCharacterFromJson(Map<String, dynamic> json) {
  return _PurpleCharacter.fromJson(json);
}

/// @nodoc
mixin _$PurpleCharacter {
  String get name => throw _privateConstructorUsedError;
  List<MainCharacterElement> get characters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurpleCharacterCopyWith<PurpleCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurpleCharacterCopyWith<$Res> {
  factory $PurpleCharacterCopyWith(
          PurpleCharacter value, $Res Function(PurpleCharacter) then) =
      _$PurpleCharacterCopyWithImpl<$Res, PurpleCharacter>;
  @useResult
  $Res call({String name, List<MainCharacterElement> characters});
}

/// @nodoc
class _$PurpleCharacterCopyWithImpl<$Res, $Val extends PurpleCharacter>
    implements $PurpleCharacterCopyWith<$Res> {
  _$PurpleCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacterElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurpleCharacterImplCopyWith<$Res>
    implements $PurpleCharacterCopyWith<$Res> {
  factory _$$PurpleCharacterImplCopyWith(_$PurpleCharacterImpl value,
          $Res Function(_$PurpleCharacterImpl) then) =
      __$$PurpleCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<MainCharacterElement> characters});
}

/// @nodoc
class __$$PurpleCharacterImplCopyWithImpl<$Res>
    extends _$PurpleCharacterCopyWithImpl<$Res, _$PurpleCharacterImpl>
    implements _$$PurpleCharacterImplCopyWith<$Res> {
  __$$PurpleCharacterImplCopyWithImpl(
      _$PurpleCharacterImpl _value, $Res Function(_$PurpleCharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? characters = null,
  }) {
    return _then(_$PurpleCharacterImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacterElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurpleCharacterImpl implements _PurpleCharacter {
  const _$PurpleCharacterImpl(
      this.name, final List<MainCharacterElement> characters)
      : _characters = characters;

  factory _$PurpleCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurpleCharacterImplFromJson(json);

  @override
  final String name;
  final List<MainCharacterElement> _characters;
  @override
  List<MainCharacterElement> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'PurpleCharacter(name: $name, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurpleCharacterImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurpleCharacterImplCopyWith<_$PurpleCharacterImpl> get copyWith =>
      __$$PurpleCharacterImplCopyWithImpl<_$PurpleCharacterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurpleCharacterImplToJson(
      this,
    );
  }
}

abstract class _PurpleCharacter implements PurpleCharacter {
  const factory _PurpleCharacter(
          final String name, final List<MainCharacterElement> characters) =
      _$PurpleCharacterImpl;

  factory _PurpleCharacter.fromJson(Map<String, dynamic> json) =
      _$PurpleCharacterImpl.fromJson;

  @override
  String get name;
  @override
  List<MainCharacterElement> get characters;
  @override
  @JsonKey(ignore: true)
  _$$PurpleCharacterImplCopyWith<_$PurpleCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainCharacterElement _$MainCharacterElementFromJson(Map<String, dynamic> json) {
  return _MainCharacterElement.fromJson(json);
}

/// @nodoc
mixin _$MainCharacterElement {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCharacterElementCopyWith<MainCharacterElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCharacterElementCopyWith<$Res> {
  factory $MainCharacterElementCopyWith(MainCharacterElement value,
          $Res Function(MainCharacterElement) then) =
      _$MainCharacterElementCopyWithImpl<$Res, MainCharacterElement>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$MainCharacterElementCopyWithImpl<$Res,
        $Val extends MainCharacterElement>
    implements $MainCharacterElementCopyWith<$Res> {
  _$MainCharacterElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainCharacterElementImplCopyWith<$Res>
    implements $MainCharacterElementCopyWith<$Res> {
  factory _$$MainCharacterElementImplCopyWith(_$MainCharacterElementImpl value,
          $Res Function(_$MainCharacterElementImpl) then) =
      __$$MainCharacterElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$MainCharacterElementImplCopyWithImpl<$Res>
    extends _$MainCharacterElementCopyWithImpl<$Res, _$MainCharacterElementImpl>
    implements _$$MainCharacterElementImplCopyWith<$Res> {
  __$$MainCharacterElementImplCopyWithImpl(_$MainCharacterElementImpl _value,
      $Res Function(_$MainCharacterElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$MainCharacterElementImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainCharacterElementImpl implements _MainCharacterElement {
  const _$MainCharacterElementImpl(this.name, this.value);

  factory _$MainCharacterElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainCharacterElementImplFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'MainCharacterElement(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCharacterElementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainCharacterElementImplCopyWith<_$MainCharacterElementImpl>
      get copyWith =>
          __$$MainCharacterElementImplCopyWithImpl<_$MainCharacterElementImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainCharacterElementImplToJson(
      this,
    );
  }
}

abstract class _MainCharacterElement implements MainCharacterElement {
  const factory _MainCharacterElement(final String name, final String value) =
      _$MainCharacterElementImpl;

  factory _MainCharacterElement.fromJson(Map<String, dynamic> json) =
      _$MainCharacterElementImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$MainCharacterElementImplCopyWith<_$MainCharacterElementImpl>
      get copyWith => throw _privateConstructorUsedError;
}
