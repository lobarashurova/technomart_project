part of 'favourite_screen_bloc.dart';

class FavouriteScreenState {
  final List<ProductModelHive>? list;
  final Status? status;
  final ProductModelHive? productModelHive;

  FavouriteScreenState({this.list, this.status, this.productModelHive});

  FavouriteScreenState copy(
          {List<ProductModelHive>? list,
          Status? status,
          ProductModelHive? productModelHive}) =>
      FavouriteScreenState(
          list: list ?? this.list,
          status: status ?? this.status,
          productModelHive: productModelHive ?? this.productModelHive);
}
