import 'package:technomart_project/data/local/hive/box/product_database.dart';
import 'package:technomart_project/data/local/hive/model/product_model_hive.dart';
import 'package:technomart_project/data/source/model/products_by_slug/products_by_slug.dart';
import 'package:technomart_project/data/source/model/slider/slider_model.dart';
import 'package:technomart_project/data/source/model/top_categories/top_categories.dart';
import 'package:technomart_project/data/source/model/top_products/top_products.dart';
import 'package:technomart_project/data/source/remote/api/api_service.dart';
import 'package:technomart_project/di/app_di.dart';
import 'package:technomart_project/domain/AppRepository.dart';

import '../../data/source/model/all_categories/all_categories_model.dart';

class AppRepositoryImpl extends AppRepository {
  final _api = getIt<ApiClient>();
  final productBox = ProductDatabase.box;

  @override
  Future<AllCategoriesModel> getAllCategoriesData(String slug) async {
    final response = _api.getAllCategories(slug: slug);
    return response;
  }

  @override
  Future<SliderModel> getAllSliderData() async {
    final response = _api.getAllSliderModel();
    return response;
  }

  @override
  Future<TopProductsModel> getAllTopProducts() async {
    final response = _api.getAllTopProducts();
    return response;
  }

  @override
  Future<ProductsBySlug> getProductsSlug(String slug) {
    final response = _api.getProductsBySlug(category: slug);
    return response;
  }

  @override
  List<ProductModelHive> getFavouritesList() {
    return productBox.values
        .toList()
        .where((element) => element.isFavourite)
        .toList();
  }

  @override
  List<ProductModelHive> getProductsInBasket() {
    return productBox.values
        .toList()
        .where((element) => element.isBasket)
        .toList();
  }

  @override
  Future<TopCategoriesModel> getAllTopCategories() async {
    final response = await _api.getAllTopCategories();
    return response;
  }

  @override
  void updateProduct(ProductModelHive productModelHive) {
    var isExist = false;
    for (var value in productBox.values.toList()) {
      if (value.name == productModelHive.name) {
        productBox.putAt(value.key, productModelHive);
        print("Product updated!");
        isExist=true;
        return;
      }
    }
    if (!isExist) {
      productBox.add(productModelHive);
      print("Product added!");
    }
  }

  @override
  bool isProductAvailableInBasket(String productName) {
    var isExist = false;
    for (var value in productBox.values.toList()) {
      if (value.name == productName) {
        isExist=value.isBasket;
      }
    }
    return isExist;
  }

  @override
  bool isProductAvailableInFavourites(String productName) {
    var isExist = false;
    for (var value in productBox.values.toList()) {
      if (value.name == productName) {
        isExist=value.isFavourite;
      }
    }
    return isExist;
  }
}
