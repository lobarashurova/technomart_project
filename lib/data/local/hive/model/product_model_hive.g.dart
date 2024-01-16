// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelHiveAdapter extends TypeAdapter<ProductModelHive> {
  @override
  final int typeId = 0;

  @override
  ProductModelHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModelHive(
      fields[0] as String,
      fields[1] as String,
      fields[2] as bool,
      fields[3] as bool,
      fields[4] as String,
      fields[5] as String,
      fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModelHive obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.isFavourite)
      ..writeByte(3)
      ..write(obj.isBasket)
      ..writeByte(4)
      ..write(obj.costProduct)
      ..writeByte(5)
      ..write(obj.monthlyCost)
      ..writeByte(6)
      ..write(obj.countInBasket);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
