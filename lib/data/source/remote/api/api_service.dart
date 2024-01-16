import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:technomart_project/data/source/model/products_by_slug/products_by_slug.dart';
import 'package:technomart_project/data/source/model/top_products/top_products.dart';

import '../../model/all_categories/all_categories_model.dart';
import '../../model/slider/slider_model.dart';
import '../../model/top_categories/top_categories.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;


  @GET('web/v1/category/catalog')
  Future<AllCategoriesModel> getAllCategories({@Query('slug') String slug = ''});


  @GET('web/v1/content/sliders')
  Future<SliderModel> getAllSliderModel();

  @GET('web/v1/home/special-products?type=hit_products')
  Future<TopProductsModel> getAllTopProducts();


  @GET('common/v1/search/filters')
  Future<ProductsBySlug> getProductsBySlug({@Query('category') String category = ''});
  
  
  @GET("https://gateway.texnomart.uz/api/web/v1/home/special-categories")
  Future<TopCategoriesModel> getAllTopCategories();

}
