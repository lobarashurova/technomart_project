import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:technomart_project/data/local/hive/model/product_model_hive.dart';
import 'package:technomart_project/data/source/model/products_by_slug/products_by_slug.dart';
import 'package:technomart_project/di/app_di.dart';
import 'package:technomart_project/domain/AppRepository.dart';

import '../../../../data/local/enum/Status.dart';
import '../../../../data/source/model/all_categories/all_categories_model.dart';

part 'products_screen_event.dart';

part 'products_screen_state.dart';

class ProductsScreenBloc
    extends Bloc<ProductsScreenEvent, ProductsScreenState> {
  ProductsScreenBloc()
      : super(ProductsScreenState(isInBasket: false, isFavourite: false)) {
    final repository = getIt<AppRepository>();
    on<LoadBySlug>((event, emit) async {
      emit(state.copy(status: Status.Loading));
      final data = await repository.getProductsSlug(event.slug ?? "");
      emit(state.copy(status: Status.Success, productsBySlug: data));
    });

    on<LoadAllCategoriesChild>((event, emit) async {
      emit(state.copy(status: Status.Loading));
      final list = await repository.getAllCategoriesData(event.slug);
      emit(state.copy(allCategoriesModel: list, status: Status.Success));
    });



    on<CheckProduct>((event, emit) {
      var isFavourite=repository.isProductAvailableInFavourites(event.productName);
      var isBasket=repository.isProductAvailableInBasket(event.productName);
      // print("product name: ${event.productName}, isFav: $isFavourite , isBas: $isBasket");
      emit(state.copy(isInBasket: isBasket, isFavourite: isFavourite));
    });
    on<UpdateProduct>((event, emit) async {
     repository.updateProduct(event.productModelHive);
     emit(state);
    });



  }
}
