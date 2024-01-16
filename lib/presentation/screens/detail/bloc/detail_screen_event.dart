part of 'detail_screen_bloc.dart';

@immutable
abstract class DetailScreenEvent {}

class UpdateProducts extends DetailScreenEvent {
  ProductModelHive productModelHive;

  UpdateProducts(this.productModelHive);
}

class CheckItem extends DetailScreenEvent{
  String productName;

  CheckItem(this.productName);
}
