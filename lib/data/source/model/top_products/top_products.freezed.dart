// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopProductsModel _$TopProductsModelFromJson(Map<String, dynamic> json) {
  return _TopProductsModel.fromJson(json);
}

/// @nodoc
mixin _$TopProductsModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  TopProductData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopProductsModelCopyWith<TopProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopProductsModelCopyWith<$Res> {
  factory $TopProductsModelCopyWith(
          TopProductsModel value, $Res Function(TopProductsModel) then) =
      _$TopProductsModelCopyWithImpl<$Res, TopProductsModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, TopProductData? data});

  $TopProductDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TopProductsModelCopyWithImpl<$Res, $Val extends TopProductsModel>
    implements $TopProductsModelCopyWith<$Res> {
  _$TopProductsModelCopyWithImpl(this._value, this._then);

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
              as TopProductData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopProductDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TopProductDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopProductsModelImplCopyWith<$Res>
    implements $TopProductsModelCopyWith<$Res> {
  factory _$$TopProductsModelImplCopyWith(_$TopProductsModelImpl value,
          $Res Function(_$TopProductsModelImpl) then) =
      __$$TopProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, TopProductData? data});

  @override
  $TopProductDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TopProductsModelImplCopyWithImpl<$Res>
    extends _$TopProductsModelCopyWithImpl<$Res, _$TopProductsModelImpl>
    implements _$$TopProductsModelImplCopyWith<$Res> {
  __$$TopProductsModelImplCopyWithImpl(_$TopProductsModelImpl _value,
      $Res Function(_$TopProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopProductsModelImpl(
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
              as TopProductData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopProductsModelImpl implements _TopProductsModel {
  const _$TopProductsModelImpl(
      this.success, this.message, this.code, this.data);

  factory _$TopProductsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopProductsModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final TopProductData? data;

  @override
  String toString() {
    return 'TopProductsModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopProductsModelImpl &&
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
  _$$TopProductsModelImplCopyWith<_$TopProductsModelImpl> get copyWith =>
      __$$TopProductsModelImplCopyWithImpl<_$TopProductsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopProductsModelImplToJson(
      this,
    );
  }
}

abstract class _TopProductsModel implements TopProductsModel {
  const factory _TopProductsModel(final bool? success, final String? message,
      final int? code, final TopProductData? data) = _$TopProductsModelImpl;

  factory _TopProductsModel.fromJson(Map<String, dynamic> json) =
      _$TopProductsModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  TopProductData? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopProductsModelImplCopyWith<_$TopProductsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopProductData _$TopProductDataFromJson(Map<String, dynamic> json) {
  return _TopProductData.fromJson(json);
}

/// @nodoc
mixin _$TopProductData {
  List<TopProductItemData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopProductDataCopyWith<TopProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopProductDataCopyWith<$Res> {
  factory $TopProductDataCopyWith(
          TopProductData value, $Res Function(TopProductData) then) =
      _$TopProductDataCopyWithImpl<$Res, TopProductData>;
  @useResult
  $Res call({List<TopProductItemData> data});
}

/// @nodoc
class _$TopProductDataCopyWithImpl<$Res, $Val extends TopProductData>
    implements $TopProductDataCopyWith<$Res> {
  _$TopProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopProductItemData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopProductDataImplCopyWith<$Res>
    implements $TopProductDataCopyWith<$Res> {
  factory _$$TopProductDataImplCopyWith(_$TopProductDataImpl value,
          $Res Function(_$TopProductDataImpl) then) =
      __$$TopProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopProductItemData> data});
}

/// @nodoc
class __$$TopProductDataImplCopyWithImpl<$Res>
    extends _$TopProductDataCopyWithImpl<$Res, _$TopProductDataImpl>
    implements _$$TopProductDataImplCopyWith<$Res> {
  __$$TopProductDataImplCopyWithImpl(
      _$TopProductDataImpl _value, $Res Function(_$TopProductDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TopProductDataImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopProductItemData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopProductDataImpl implements _TopProductData {
  const _$TopProductDataImpl(final List<TopProductItemData> data)
      : _data = data;

  factory _$TopProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopProductDataImplFromJson(json);

  final List<TopProductItemData> _data;
  @override
  List<TopProductItemData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TopProductData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopProductDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopProductDataImplCopyWith<_$TopProductDataImpl> get copyWith =>
      __$$TopProductDataImplCopyWithImpl<_$TopProductDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopProductDataImplToJson(
      this,
    );
  }
}

abstract class _TopProductData implements TopProductData {
  const factory _TopProductData(final List<TopProductItemData> data) =
      _$TopProductDataImpl;

  factory _TopProductData.fromJson(Map<String, dynamic> json) =
      _$TopProductDataImpl.fromJson;

  @override
  List<TopProductItemData> get data;
  @override
  @JsonKey(ignore: true)
  _$$TopProductDataImplCopyWith<_$TopProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopProductItemData _$TopProductItemDataFromJson(Map<String, dynamic> json) {
  return _TopProductItemData.fromJson(json);
}

/// @nodoc
mixin _$TopProductItemData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  dynamic get availability => throw _privateConstructorUsedError;
  String? get axiomMonthlyPrice => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  int? get oldPrice => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  int? get reviewsAverage => throw _privateConstructorUsedError;
  int? get allCount => throw _privateConstructorUsedError;
  List<Sticker>? get stickers => throw _privateConstructorUsedError;
  List<SaleMonth>? get saleMonths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopProductItemDataCopyWith<TopProductItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopProductItemDataCopyWith<$Res> {
  factory $TopProductItemDataCopyWith(
          TopProductItemData value, $Res Function(TopProductItemData) then) =
      _$TopProductItemDataCopyWithImpl<$Res, TopProductItemData>;
  @useResult
  $Res call(
      {int? id,
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
      List<SaleMonth>? saleMonths});
}

/// @nodoc
class _$TopProductItemDataCopyWithImpl<$Res, $Val extends TopProductItemData>
    implements $TopProductItemDataCopyWith<$Res> {
  _$TopProductItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? stickers = freezed,
    Object? saleMonths = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as dynamic,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAverage: freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stickers: freezed == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>?,
      saleMonths: freezed == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SaleMonth>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopProductItemDataImplCopyWith<$Res>
    implements $TopProductItemDataCopyWith<$Res> {
  factory _$$TopProductItemDataImplCopyWith(_$TopProductItemDataImpl value,
          $Res Function(_$TopProductItemDataImpl) then) =
      __$$TopProductItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      List<SaleMonth>? saleMonths});
}

/// @nodoc
class __$$TopProductItemDataImplCopyWithImpl<$Res>
    extends _$TopProductItemDataCopyWithImpl<$Res, _$TopProductItemDataImpl>
    implements _$$TopProductItemDataImplCopyWith<$Res> {
  __$$TopProductItemDataImplCopyWithImpl(_$TopProductItemDataImpl _value,
      $Res Function(_$TopProductItemDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? stickers = freezed,
    Object? saleMonths = freezed,
  }) {
    return _then(_$TopProductItemDataImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>?,
      freezed == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SaleMonth>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopProductItemDataImpl implements _TopProductItemData {
  const _$TopProductItemDataImpl(
      this.id,
      this.name,
      this.image,
      this.availability,
      this.axiomMonthlyPrice,
      this.salePrice,
      this.oldPrice,
      this.reviewsCount,
      this.reviewsAverage,
      this.allCount,
      final List<Sticker>? stickers,
      final List<SaleMonth>? saleMonths)
      : _stickers = stickers,
        _saleMonths = saleMonths;

  factory _$TopProductItemDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopProductItemDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final dynamic availability;
  @override
  final String? axiomMonthlyPrice;
  @override
  final int? salePrice;
  @override
  final int? oldPrice;
  @override
  final int? reviewsCount;
  @override
  final int? reviewsAverage;
  @override
  final int? allCount;
  final List<Sticker>? _stickers;
  @override
  List<Sticker>? get stickers {
    final value = _stickers;
    if (value == null) return null;
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SaleMonth>? _saleMonths;
  @override
  List<SaleMonth>? get saleMonths {
    final value = _saleMonths;
    if (value == null) return null;
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopProductItemData(id: $id, name: $name, image: $image, availability: $availability, axiomMonthlyPrice: $axiomMonthlyPrice, salePrice: $salePrice, oldPrice: $oldPrice, reviewsCount: $reviewsCount, reviewsAverage: $reviewsAverage, allCount: $allCount, stickers: $stickers, saleMonths: $saleMonths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopProductItemDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other.availability, availability) &&
            (identical(other.axiomMonthlyPrice, axiomMonthlyPrice) ||
                other.axiomMonthlyPrice == axiomMonthlyPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.reviewsAverage, reviewsAverage) ||
                other.reviewsAverage == reviewsAverage) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      const DeepCollectionEquality().hash(availability),
      axiomMonthlyPrice,
      salePrice,
      oldPrice,
      reviewsCount,
      reviewsAverage,
      allCount,
      const DeepCollectionEquality().hash(_stickers),
      const DeepCollectionEquality().hash(_saleMonths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopProductItemDataImplCopyWith<_$TopProductItemDataImpl> get copyWith =>
      __$$TopProductItemDataImplCopyWithImpl<_$TopProductItemDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopProductItemDataImplToJson(
      this,
    );
  }
}

abstract class _TopProductItemData implements TopProductItemData {
  const factory _TopProductItemData(
      final int? id,
      final String? name,
      final String? image,
      final dynamic availability,
      final String? axiomMonthlyPrice,
      final int? salePrice,
      final int? oldPrice,
      final int? reviewsCount,
      final int? reviewsAverage,
      final int? allCount,
      final List<Sticker>? stickers,
      final List<SaleMonth>? saleMonths) = _$TopProductItemDataImpl;

  factory _TopProductItemData.fromJson(Map<String, dynamic> json) =
      _$TopProductItemDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  dynamic get availability;
  @override
  String? get axiomMonthlyPrice;
  @override
  int? get salePrice;
  @override
  int? get oldPrice;
  @override
  int? get reviewsCount;
  @override
  int? get reviewsAverage;
  @override
  int? get allCount;
  @override
  List<Sticker>? get stickers;
  @override
  List<SaleMonth>? get saleMonths;
  @override
  @JsonKey(ignore: true)
  _$$TopProductItemDataImplCopyWith<_$TopProductItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleMonth _$SaleMonthFromJson(Map<String, dynamic> json) {
  return _SaleMonth.fromJson(json);
}

/// @nodoc
mixin _$SaleMonth {
  int? get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleMonthCopyWith<SaleMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleMonthCopyWith<$Res> {
  factory $SaleMonthCopyWith(SaleMonth value, $Res Function(SaleMonth) then) =
      _$SaleMonthCopyWithImpl<$Res, SaleMonth>;
  @useResult
  $Res call({int? id, String? key, String? name, String? image});
}

/// @nodoc
class _$SaleMonthCopyWithImpl<$Res, $Val extends SaleMonth>
    implements $SaleMonthCopyWith<$Res> {
  _$SaleMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleMonthImplCopyWith<$Res>
    implements $SaleMonthCopyWith<$Res> {
  factory _$$SaleMonthImplCopyWith(
          _$SaleMonthImpl value, $Res Function(_$SaleMonthImpl) then) =
      __$$SaleMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? key, String? name, String? image});
}

/// @nodoc
class __$$SaleMonthImplCopyWithImpl<$Res>
    extends _$SaleMonthCopyWithImpl<$Res, _$SaleMonthImpl>
    implements _$$SaleMonthImplCopyWith<$Res> {
  __$$SaleMonthImplCopyWithImpl(
      _$SaleMonthImpl _value, $Res Function(_$SaleMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SaleMonthImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SaleMonthImpl implements _SaleMonth {
  const _$SaleMonthImpl(this.id, this.key, this.name, this.image);

  factory _$SaleMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleMonthImplFromJson(json);

  @override
  final int? id;
  @override
  final String? key;
  @override
  final String? name;
  @override
  final String? image;

  @override
  String toString() {
    return 'SaleMonth(id: $id, key: $key, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleMonthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleMonthImplCopyWith<_$SaleMonthImpl> get copyWith =>
      __$$SaleMonthImplCopyWithImpl<_$SaleMonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleMonthImplToJson(
      this,
    );
  }
}

abstract class _SaleMonth implements SaleMonth {
  const factory _SaleMonth(final int? id, final String? key, final String? name,
      final String? image) = _$SaleMonthImpl;

  factory _SaleMonth.fromJson(Map<String, dynamic> json) =
      _$SaleMonthImpl.fromJson;

  @override
  int? get id;
  @override
  String? get key;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$SaleMonthImplCopyWith<_$SaleMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return _Sticker.fromJson(json);
}

/// @nodoc
mixin _$Sticker {
  String? get name => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  bool? get isImage => throw _privateConstructorUsedError;
  bool? get showInCard => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerCopyWith<Sticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerCopyWith<$Res> {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) then) =
      _$StickerCopyWithImpl<$Res, Sticker>;
  @useResult
  $Res call(
      {String? name,
      String? backgroundColor,
      String? textColor,
      bool? isImage,
      bool? showInCard,
      dynamic image});
}

/// @nodoc
class _$StickerCopyWithImpl<$Res, $Val extends Sticker>
    implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? isImage = freezed,
    Object? showInCard = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      showInCard: freezed == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StickerImplCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$$StickerImplCopyWith(
          _$StickerImpl value, $Res Function(_$StickerImpl) then) =
      __$$StickerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? backgroundColor,
      String? textColor,
      bool? isImage,
      bool? showInCard,
      dynamic image});
}

/// @nodoc
class __$$StickerImplCopyWithImpl<$Res>
    extends _$StickerCopyWithImpl<$Res, _$StickerImpl>
    implements _$$StickerImplCopyWith<$Res> {
  __$$StickerImplCopyWithImpl(
      _$StickerImpl _value, $Res Function(_$StickerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? isImage = freezed,
    Object? showInCard = freezed,
    Object? image = freezed,
  }) {
    return _then(_$StickerImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$StickerImpl implements _Sticker {
  const _$StickerImpl(this.name, this.backgroundColor, this.textColor,
      this.isImage, this.showInCard, this.image);

  factory _$StickerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickerImplFromJson(json);

  @override
  final String? name;
  @override
  final String? backgroundColor;
  @override
  final String? textColor;
  @override
  final bool? isImage;
  @override
  final bool? showInCard;
  @override
  final dynamic image;

  @override
  String toString() {
    return 'Sticker(name: $name, backgroundColor: $backgroundColor, textColor: $textColor, isImage: $isImage, showInCard: $showInCard, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.showInCard, showInCard) ||
                other.showInCard == showInCard) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, backgroundColor, textColor,
      isImage, showInCard, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      __$$StickerImplCopyWithImpl<_$StickerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickerImplToJson(
      this,
    );
  }
}

abstract class _Sticker implements Sticker {
  const factory _Sticker(
      final String? name,
      final String? backgroundColor,
      final String? textColor,
      final bool? isImage,
      final bool? showInCard,
      final dynamic image) = _$StickerImpl;

  factory _Sticker.fromJson(Map<String, dynamic> json) = _$StickerImpl.fromJson;

  @override
  String? get name;
  @override
  String? get backgroundColor;
  @override
  String? get textColor;
  @override
  bool? get isImage;
  @override
  bool? get showInCard;
  @override
  dynamic get image;
  @override
  @JsonKey(ignore: true)
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
