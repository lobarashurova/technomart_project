part of 'products_screen_bloc.dart';

class ProductsScreenState {
  final ProductsBySlug? productsBySlug;
  final Status? status;
  final AllCategoriesModel? allCategoriesModel;
  final String? firstChild;
  late bool isInBasket;
  late bool isFavourite;

  final ProductModelHive? productModelHive;

  ProductsScreenState(
      {this.productsBySlug,
      this.status,
      this.allCategoriesModel,
      this.firstChild,
      this.productModelHive,
      required this.isFavourite,
      required this.isInBasket});

  ProductsScreenState copy(
          {ProductsBySlug? productsBySlug,
          Status? status,
          AllCategoriesModel? allCategoriesModel,
          String? firstChild,
          ProductModelHive? productModelHive,
          bool? isFavourite,
          bool? isInBasket}) =>
      ProductsScreenState(
          productsBySlug: productsBySlug ?? this.productsBySlug,
          status: status ?? this.status,
          allCategoriesModel: allCategoriesModel ?? this.allCategoriesModel,
          firstChild: firstChild ?? this.firstChild,
          productModelHive: productModelHive ?? this.productModelHive,
          isFavourite: isFavourite ?? this.isFavourite,
          isInBasket: isInBasket ?? this.isInBasket);
}
