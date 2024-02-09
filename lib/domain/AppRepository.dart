import 'package:technomart_project/data/local/hive/model/product_model_hive.dart';
import 'package:technomart_project/data/source/model/top_categories/top_categories.dart';
import 'package:technomart_project/data/source/model/top_products/top_products.dart';

import '../data/source/model/all_categories/all_categories_model.dart';
import '../data/source/model/product_data/product_model_by_id.dart';
import '../data/source/model/products_by_slug/products_by_slug.dart';
import '../data/source/model/slider/slider_model.dart';
import '../data/source/model/stores/stores_model.dart';

abstract class AppRepository {
  Future<SliderModel> getAllSliderData();

  Future<AllCategoriesModel> getAllCategoriesData(String slug);

  Future<TopProductsModel> getAllTopProducts();

  Future<ProductsBySlug> getProductsSlug(String slug);

  List<ProductModelHive> getFavouritesList();

  List<ProductModelHive> getProductsInBasket();
  List<ProductModelHive> getProductsInFavourite();


  Future<TopCategoriesModel> getAllTopCategories();

  void updateProduct(ProductModelHive productModelHive);

  bool isProductAvailableInBasket(String productName);

  bool isProductAvailableInFavourites(String productName);

  Future<AllStoresModel> getAllStoresData();

  Future<ProductModelById> getProductsById(int id);
}
