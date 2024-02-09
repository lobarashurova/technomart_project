part of 'detail_screen_bloc.dart';

class DetailScreenState {
  final ProductModelHive? productModelHive;
  late bool isBasket;
  late bool isFavourite;
  final ProductModelById? productModelById;
  final Status? status;

  DetailScreenState(
      {this.productModelHive,
      required this.isBasket,
      required this.isFavourite,
      this.productModelById,
      this.status});

  DetailScreenState copy(
      {ProductModelHive? productModelHive,
      bool? isBasket,
      bool? isFavourite,
      ProductModelById? productModelById,
      Status? status}) {
    return DetailScreenState(
        productModelHive: productModelHive ?? this.productModelHive,
        isBasket: isBasket ?? this.isBasket,
        isFavourite: isFavourite ?? this.isFavourite,
        productModelById: productModelById ?? this.productModelById,
        status: status ?? this.status);
  }
}
