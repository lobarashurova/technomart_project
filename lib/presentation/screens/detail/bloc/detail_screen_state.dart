part of 'detail_screen_bloc.dart';

class DetailScreenState {
  final ProductModelHive? productModelHive;
  late bool isBasket;
  late bool isFavourite;

  DetailScreenState({this.productModelHive, required this.isBasket, required this.isFavourite});

  DetailScreenState copy(
      {ProductModelHive? productModelHive, bool? isBasket, bool? isFavourite}) {
    return DetailScreenState(
        productModelHive: productModelHive ?? this.productModelHive,
        isBasket: isBasket ?? this.isBasket,
        isFavourite: isFavourite ?? this.isFavourite);
  }
}
