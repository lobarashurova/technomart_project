part of 'basket_screen_bloc.dart';

class BasketScreenState {
  final List<ProductModelHive>? list;
  final Status? status;
  final ProductModelHive? productModelHive;

  BasketScreenState({this.list, this.status, this.productModelHive});

  BasketScreenState copy(
          {List<ProductModelHive>? list,
          Status? status,
          ProductModelHive? productModelHive}) =>
      BasketScreenState(
          list: list ?? this.list,
          status: status ?? this.status,
          productModelHive: productModelHive ?? this.productModelHive);
}
