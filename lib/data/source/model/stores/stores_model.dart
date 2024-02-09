import 'package:freezed_annotation/freezed_annotation.dart';


part 'stores_model.g.dart';

part 'stores_model.freezed.dart';

@freezed
class AllStoresModel with _$AllStoresModel {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory AllStoresModel(
  bool? success,
  String? message,
  int? code,
  StoresModel? data,
      ) = _AllStoresModel;

  factory AllStoresModel.fromJson(Map<String, dynamic> json) =>
      _$AllStoresModelFromJson(json);
}

@freezed
class StoresModel with _$StoresModel {
  const factory StoresModel(
  List<StoresItemModel>? data

      ) = _StoresModel;



  factory StoresModel.fromJson(Map<String, dynamic> json) =>
      _$StoresModelFromJson(json);
}

@freezed
class StoresItemModel with _$StoresItemModel {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory StoresItemModel(
  int? id,
  String? name,
  List<OpenedStore>? openedStores,
  List<OpenedStore>? notOpenedStores,
      ) = _StoresItemModel;

  factory StoresItemModel.fromJson(Map<String, dynamic> json) =>
      _$StoresItemModelFromJson(json);
}

@freezed
class OpenedStore with _$OpenedStore {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory OpenedStore(
  int? id,
  String? name,
  String? address,
  String? description,
  String? long,
  String? lat,
  String? phone,
  String? workTime,
  List<dynamic> images,
      ) = _OpenedStore;


  factory OpenedStore.fromJson(Map<String, dynamic> json) =>
      _$OpenedStoreFromJson(json);
}

