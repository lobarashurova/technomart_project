part of 'products_screen_bloc.dart';

@immutable
abstract class ProductsScreenEvent {}

class LoadBySlug extends ProductsScreenEvent {
  final String? slug;

  LoadBySlug(this.slug);
}

class UpdateProduct extends ProductsScreenEvent{
  ProductModelHive productModelHive;

  UpdateProduct(this.productModelHive);
}
class LoadAllCategoriesChild extends ProductsScreenEvent{
  String slug;

  LoadAllCategoriesChild(this.slug);
}

class CheckProduct extends ProductsScreenEvent{
  String productName;

  CheckProduct(this.productName);
}