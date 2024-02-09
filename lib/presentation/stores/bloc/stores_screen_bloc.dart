import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:technomart_project/data/local/enum/Status.dart';
import 'package:technomart_project/data/source/model/stores/stores_model.dart';
import 'package:technomart_project/di/app_di.dart';
import 'package:technomart_project/domain/AppRepository.dart';

part 'stores_screen_event.dart';

part 'stores_screen_state.dart';

class ProfileTabBloc extends Bloc<ProfileTabEvent, ProfileTabState> {
  ProfileTabBloc() : super(ProfileTabState()) {
    final repository = getIt<AppRepository>();
    on<LoadStoriesData>((event, emit) async {
      emit(state.copy(status: Status.Loading));
      var data = await  repository.getAllStoresData();
      emit(state.copy(status: Status.Success, allStoresModel: data));
    });
  }
}
