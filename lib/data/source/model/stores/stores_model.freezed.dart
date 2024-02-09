// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllStoresModel _$AllStoresModelFromJson(Map<String, dynamic> json) {
  return _AllStoresModel.fromJson(json);
}

/// @nodoc
mixin _$AllStoresModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  StoresModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllStoresModelCopyWith<AllStoresModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllStoresModelCopyWith<$Res> {
  factory $AllStoresModelCopyWith(
          AllStoresModel value, $Res Function(AllStoresModel) then) =
      _$AllStoresModelCopyWithImpl<$Res, AllStoresModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, StoresModel? data});

  $StoresModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AllStoresModelCopyWithImpl<$Res, $Val extends AllStoresModel>
    implements $AllStoresModelCopyWith<$Res> {
  _$AllStoresModelCopyWithImpl(this._value, this._then);

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
              as StoresModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoresModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StoresModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllStoresModelImplCopyWith<$Res>
    implements $AllStoresModelCopyWith<$Res> {
  factory _$$AllStoresModelImplCopyWith(_$AllStoresModelImpl value,
          $Res Function(_$AllStoresModelImpl) then) =
      __$$AllStoresModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, StoresModel? data});

  @override
  $StoresModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AllStoresModelImplCopyWithImpl<$Res>
    extends _$AllStoresModelCopyWithImpl<$Res, _$AllStoresModelImpl>
    implements _$$AllStoresModelImplCopyWith<$Res> {
  __$$AllStoresModelImplCopyWithImpl(
      _$AllStoresModelImpl _value, $Res Function(_$AllStoresModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AllStoresModelImpl(
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
              as StoresModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$AllStoresModelImpl implements _AllStoresModel {
  const _$AllStoresModelImpl(this.success, this.message, this.code, this.data);

  factory _$AllStoresModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllStoresModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final StoresModel? data;

  @override
  String toString() {
    return 'AllStoresModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllStoresModelImpl &&
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
  _$$AllStoresModelImplCopyWith<_$AllStoresModelImpl> get copyWith =>
      __$$AllStoresModelImplCopyWithImpl<_$AllStoresModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllStoresModelImplToJson(
      this,
    );
  }
}

abstract class _AllStoresModel implements AllStoresModel {
  const factory _AllStoresModel(final bool? success, final String? message,
      final int? code, final StoresModel? data) = _$AllStoresModelImpl;

  factory _AllStoresModel.fromJson(Map<String, dynamic> json) =
      _$AllStoresModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  StoresModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllStoresModelImplCopyWith<_$AllStoresModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoresModel _$StoresModelFromJson(Map<String, dynamic> json) {
  return _StoresModel.fromJson(json);
}

/// @nodoc
mixin _$StoresModel {
  List<StoresItemModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoresModelCopyWith<StoresModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresModelCopyWith<$Res> {
  factory $StoresModelCopyWith(
          StoresModel value, $Res Function(StoresModel) then) =
      _$StoresModelCopyWithImpl<$Res, StoresModel>;
  @useResult
  $Res call({List<StoresItemModel>? data});
}

/// @nodoc
class _$StoresModelCopyWithImpl<$Res, $Val extends StoresModel>
    implements $StoresModelCopyWith<$Res> {
  _$StoresModelCopyWithImpl(this._value, this._then);

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
              as List<StoresItemModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoresModelImplCopyWith<$Res>
    implements $StoresModelCopyWith<$Res> {
  factory _$$StoresModelImplCopyWith(
          _$StoresModelImpl value, $Res Function(_$StoresModelImpl) then) =
      __$$StoresModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoresItemModel>? data});
}

/// @nodoc
class __$$StoresModelImplCopyWithImpl<$Res>
    extends _$StoresModelCopyWithImpl<$Res, _$StoresModelImpl>
    implements _$$StoresModelImplCopyWith<$Res> {
  __$$StoresModelImplCopyWithImpl(
      _$StoresModelImpl _value, $Res Function(_$StoresModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StoresModelImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StoresItemModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoresModelImpl implements _StoresModel {
  const _$StoresModelImpl(final List<StoresItemModel>? data) : _data = data;

  factory _$StoresModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoresModelImplFromJson(json);

  final List<StoresItemModel>? _data;
  @override
  List<StoresItemModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StoresModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresModelImplCopyWith<_$StoresModelImpl> get copyWith =>
      __$$StoresModelImplCopyWithImpl<_$StoresModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoresModelImplToJson(
      this,
    );
  }
}

abstract class _StoresModel implements StoresModel {
  const factory _StoresModel(final List<StoresItemModel>? data) =
      _$StoresModelImpl;

  factory _StoresModel.fromJson(Map<String, dynamic> json) =
      _$StoresModelImpl.fromJson;

  @override
  List<StoresItemModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$StoresModelImplCopyWith<_$StoresModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoresItemModel _$StoresItemModelFromJson(Map<String, dynamic> json) {
  return _StoresItemModel.fromJson(json);
}

/// @nodoc
mixin _$StoresItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<OpenedStore>? get openedStores => throw _privateConstructorUsedError;
  List<OpenedStore>? get notOpenedStores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoresItemModelCopyWith<StoresItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresItemModelCopyWith<$Res> {
  factory $StoresItemModelCopyWith(
          StoresItemModel value, $Res Function(StoresItemModel) then) =
      _$StoresItemModelCopyWithImpl<$Res, StoresItemModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<OpenedStore>? openedStores,
      List<OpenedStore>? notOpenedStores});
}

/// @nodoc
class _$StoresItemModelCopyWithImpl<$Res, $Val extends StoresItemModel>
    implements $StoresItemModelCopyWith<$Res> {
  _$StoresItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? openedStores = freezed,
    Object? notOpenedStores = freezed,
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
      openedStores: freezed == openedStores
          ? _value.openedStores
          : openedStores // ignore: cast_nullable_to_non_nullable
              as List<OpenedStore>?,
      notOpenedStores: freezed == notOpenedStores
          ? _value.notOpenedStores
          : notOpenedStores // ignore: cast_nullable_to_non_nullable
              as List<OpenedStore>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoresItemModelImplCopyWith<$Res>
    implements $StoresItemModelCopyWith<$Res> {
  factory _$$StoresItemModelImplCopyWith(_$StoresItemModelImpl value,
          $Res Function(_$StoresItemModelImpl) then) =
      __$$StoresItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<OpenedStore>? openedStores,
      List<OpenedStore>? notOpenedStores});
}

/// @nodoc
class __$$StoresItemModelImplCopyWithImpl<$Res>
    extends _$StoresItemModelCopyWithImpl<$Res, _$StoresItemModelImpl>
    implements _$$StoresItemModelImplCopyWith<$Res> {
  __$$StoresItemModelImplCopyWithImpl(
      _$StoresItemModelImpl _value, $Res Function(_$StoresItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? openedStores = freezed,
    Object? notOpenedStores = freezed,
  }) {
    return _then(_$StoresItemModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == openedStores
          ? _value._openedStores
          : openedStores // ignore: cast_nullable_to_non_nullable
              as List<OpenedStore>?,
      freezed == notOpenedStores
          ? _value._notOpenedStores
          : notOpenedStores // ignore: cast_nullable_to_non_nullable
              as List<OpenedStore>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$StoresItemModelImpl implements _StoresItemModel {
  const _$StoresItemModelImpl(
      this.id,
      this.name,
      final List<OpenedStore>? openedStores,
      final List<OpenedStore>? notOpenedStores)
      : _openedStores = openedStores,
        _notOpenedStores = notOpenedStores;

  factory _$StoresItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoresItemModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<OpenedStore>? _openedStores;
  @override
  List<OpenedStore>? get openedStores {
    final value = _openedStores;
    if (value == null) return null;
    if (_openedStores is EqualUnmodifiableListView) return _openedStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OpenedStore>? _notOpenedStores;
  @override
  List<OpenedStore>? get notOpenedStores {
    final value = _notOpenedStores;
    if (value == null) return null;
    if (_notOpenedStores is EqualUnmodifiableListView) return _notOpenedStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StoresItemModel(id: $id, name: $name, openedStores: $openedStores, notOpenedStores: $notOpenedStores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._openedStores, _openedStores) &&
            const DeepCollectionEquality()
                .equals(other._notOpenedStores, _notOpenedStores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_openedStores),
      const DeepCollectionEquality().hash(_notOpenedStores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresItemModelImplCopyWith<_$StoresItemModelImpl> get copyWith =>
      __$$StoresItemModelImplCopyWithImpl<_$StoresItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoresItemModelImplToJson(
      this,
    );
  }
}

abstract class _StoresItemModel implements StoresItemModel {
  const factory _StoresItemModel(
      final int? id,
      final String? name,
      final List<OpenedStore>? openedStores,
      final List<OpenedStore>? notOpenedStores) = _$StoresItemModelImpl;

  factory _StoresItemModel.fromJson(Map<String, dynamic> json) =
      _$StoresItemModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<OpenedStore>? get openedStores;
  @override
  List<OpenedStore>? get notOpenedStores;
  @override
  @JsonKey(ignore: true)
  _$$StoresItemModelImplCopyWith<_$StoresItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenedStore _$OpenedStoreFromJson(Map<String, dynamic> json) {
  return _OpenedStore.fromJson(json);
}

/// @nodoc
mixin _$OpenedStore {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get workTime => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenedStoreCopyWith<OpenedStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenedStoreCopyWith<$Res> {
  factory $OpenedStoreCopyWith(
          OpenedStore value, $Res Function(OpenedStore) then) =
      _$OpenedStoreCopyWithImpl<$Res, OpenedStore>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? description,
      String? long,
      String? lat,
      String? phone,
      String? workTime,
      List<dynamic> images});
}

/// @nodoc
class _$OpenedStoreCopyWithImpl<$Res, $Val extends OpenedStore>
    implements $OpenedStoreCopyWith<$Res> {
  _$OpenedStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? phone = freezed,
    Object? workTime = freezed,
    Object? images = null,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenedStoreImplCopyWith<$Res>
    implements $OpenedStoreCopyWith<$Res> {
  factory _$$OpenedStoreImplCopyWith(
          _$OpenedStoreImpl value, $Res Function(_$OpenedStoreImpl) then) =
      __$$OpenedStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? description,
      String? long,
      String? lat,
      String? phone,
      String? workTime,
      List<dynamic> images});
}

/// @nodoc
class __$$OpenedStoreImplCopyWithImpl<$Res>
    extends _$OpenedStoreCopyWithImpl<$Res, _$OpenedStoreImpl>
    implements _$$OpenedStoreImplCopyWith<$Res> {
  __$$OpenedStoreImplCopyWithImpl(
      _$OpenedStoreImpl _value, $Res Function(_$OpenedStoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? phone = freezed,
    Object? workTime = freezed,
    Object? images = null,
  }) {
    return _then(_$OpenedStoreImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$OpenedStoreImpl implements _OpenedStore {
  const _$OpenedStoreImpl(
      this.id,
      this.name,
      this.address,
      this.description,
      this.long,
      this.lat,
      this.phone,
      this.workTime,
      final List<dynamic> images)
      : _images = images;

  factory _$OpenedStoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenedStoreImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? description;
  @override
  final String? long;
  @override
  final String? lat;
  @override
  final String? phone;
  @override
  final String? workTime;
  final List<dynamic> _images;
  @override
  List<dynamic> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'OpenedStore(id: $id, name: $name, address: $address, description: $description, long: $long, lat: $lat, phone: $phone, workTime: $workTime, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenedStoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, description,
      long, lat, phone, workTime, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenedStoreImplCopyWith<_$OpenedStoreImpl> get copyWith =>
      __$$OpenedStoreImplCopyWithImpl<_$OpenedStoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenedStoreImplToJson(
      this,
    );
  }
}

abstract class _OpenedStore implements OpenedStore {
  const factory _OpenedStore(
      final int? id,
      final String? name,
      final String? address,
      final String? description,
      final String? long,
      final String? lat,
      final String? phone,
      final String? workTime,
      final List<dynamic> images) = _$OpenedStoreImpl;

  factory _OpenedStore.fromJson(Map<String, dynamic> json) =
      _$OpenedStoreImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get description;
  @override
  String? get long;
  @override
  String? get lat;
  @override
  String? get phone;
  @override
  String? get workTime;
  @override
  List<dynamic> get images;
  @override
  @JsonKey(ignore: true)
  _$$OpenedStoreImplCopyWith<_$OpenedStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
