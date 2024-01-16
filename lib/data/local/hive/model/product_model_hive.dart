import 'package:hive/hive.dart';

part 'product_model_hive.g.dart';

@HiveType(typeId: 0)
class ProductModelHive extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String image;
  @HiveField(2)
  bool isFavourite;
  @HiveField(3)
  bool isBasket;
  @HiveField(4)
  String costProduct;
  @HiveField(5)
  String monthlyCost;
  @HiveField(6)
  int countInBasket = 0;

  ProductModelHive(this.name, this.image, this.isFavourite, this.isBasket,
      this.costProduct, this.monthlyCost, this.countInBasket);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'isFavourite': isFavourite,
      'isBasket': isBasket,
      'costProduct': costProduct,
      'monthlyCost': monthlyCost,
      'countInBasket': countInBasket
    };
  }

  factory ProductModelHive.fromMap(Map<dynamic, dynamic> map) {
    return ProductModelHive(
        map['name'],
        map['image'],
        map['isFavourite'],
        map['isBasket'],
        map['costProduct'],
        map['monthlyCost'],
        map['countInBasket']);
  }
}
