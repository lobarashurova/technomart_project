import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:technomart_project/di/app_di.dart';
import 'package:technomart_project/domain/AppRepository.dart';

part 'general_screen_event.dart';

part 'general_screen_state.dart';

class GeneralScreenBloc extends Bloc<GeneralScreenEvent, GeneralScreenState> {
  GeneralScreenBloc() : super(GeneralScreenState()) {
    final repository = getIt<AppRepository>();
    on<UpdateSize>((event, emit) {
      var size = repository.getProductsInBasket().length;
      var favSize = repository.getFavouritesList().length;
      emit(state.copy(size, favSize));
    });
  }
}
