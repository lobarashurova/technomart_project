import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:technomart_project/data/source/model/all_categories/all_categories_model.dart';
import 'package:technomart_project/di/app_di.dart';
import 'package:technomart_project/domain/AppRepository.dart';

import '../../../../data/local/enum/Status.dart';

part 'all_categories_event.dart';

part 'all_categories_state.dart';

class AllCategoriesBloc extends Bloc<AllCategoriesEvent, AllCategoriesState> {
  AllCategoriesBloc() : super(AllCategoriesState()) {
    final repository = getIt<AppRepository>();
    on<LoadAllCategoriesData>((event, emit) async {
      emit(state.copy(status: Status.Loading));
      var list = await repository.getAllCategoriesData("");
      emit(state.copy(allCategoriesModel: list, status: Status.Success));
    });
  }
}
