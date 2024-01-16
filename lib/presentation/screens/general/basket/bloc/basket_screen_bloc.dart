import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:technomart_project/domain/AppRepository.dart';

import '../../../../../data/local/enum/Status.dart';
import '../../../../../data/local/hive/model/product_model_hive.dart';
import '../../../../../di/app_di.dart';

part 'basket_screen_event.dart';

part 'basket_screen_state.dart';

class BasketScreenBloc extends Bloc<BasketScreenEvent, BasketScreenState> {
  BasketScreenBloc() : super(BasketScreenState()) {
    final repository = getIt<AppRepository>();
    on<LoadAllData>((event, emit) {
      var list = repository.getProductsInBasket();
      emit(state.copy(list: list, status: Status.Success));
    });

    on<UpdateData>((event, emit) {
      repository.updateProduct(event.productModelHive);
      emit(state.copy(status: Status.Success));
    });
  }
}
