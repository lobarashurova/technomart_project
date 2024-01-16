import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:technomart_project/di/app_di.dart';
import 'package:technomart_project/domain/AppRepository.dart';

import '../../../../../data/local/enum/Status.dart';
import '../../../../../data/local/hive/model/product_model_hive.dart';

part 'favourite_screen_event.dart';

part 'favourite_screen_state.dart';

class FavouriteScreenBloc
    extends Bloc<FavouriteScreenEvent, FavouriteScreenState> {
  FavouriteScreenBloc() : super(FavouriteScreenState()) {
    final repository = getIt<AppRepository>();
    on<LoadAllData>((event, emit) async {
      emit(state.copy(status: Status.Loading));
      var list = repository.getFavouritesList();
      var set = HashSet<ProductModelHive>();
      set.addAll(list);
      emit(state.copy(list: set.toList(), status: Status.Success));
    });

    on<UpdateData>((event, emit) async {
      repository.updateProduct(event.productModelHive);
    });
  }
}
