import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:technomart_project/data/source/model/products_by_slug/products_by_slug.dart';
import 'package:technomart_project/data/source/model/slider/slider_model.dart';
import 'package:technomart_project/data/source/model/top_categories/top_categories.dart';
import 'package:technomart_project/di/app_di.dart';
import 'package:technomart_project/domain/AppRepository.dart';

import '../../../../../data/local/enum/Status.dart';
import '../../../../../data/source/model/top_products/top_products.dart';

part 'home_screen_event.dart';

part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState()) {
    final repository = getIt<AppRepository>();

    on<LoadAllCategoriesData>((event, emit) async {
      emit(state.copy(status: Status.Loading));
      final listCategory = await repository.getAllTopCategories();
      final listSlider = await repository.getAllSliderData();
      final listTopCategoriesData = await repository.getAllTopProducts();
      emit(state.copy(
          status: Status.Success,
          topCategoriesModel: listCategory,
          sliderModel: listSlider,
          topProductsModel: listTopCategoriesData));
    });

    on<LoadBySlugData>((event, emit) async {});
  }
}
