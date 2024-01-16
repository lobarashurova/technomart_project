import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:technomart_project/data/local/hive/model/product_model_hive.dart';
import 'package:technomart_project/domain/AppRepository.dart';

import '../../../../di/app_di.dart';

part 'detail_screen_event.dart';

part 'detail_screen_state.dart';

class DetailScreenBloc extends Bloc<DetailScreenEvent, DetailScreenState> {
  DetailScreenBloc()
      : super(DetailScreenState(isFavourite: false, isBasket: false)) {
    final repository = getIt<AppRepository>();
    on<UpdateProducts>((event, emit) {
      repository.updateProduct(event.productModelHive);
    });
    on<CheckItem>((event, emit) {
      var isFavourite =
          repository.isProductAvailableInFavourites(event.productName);
      var isBasket = repository.isProductAvailableInBasket(event.productName);
      print("isfavourite:$isFavourite, isnasbket: $isBasket");
      emit(state.copy(isFavourite: isFavourite, isBasket: isBasket));
    });
  }
}
