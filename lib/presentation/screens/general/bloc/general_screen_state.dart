part of 'general_screen_bloc.dart';

class GeneralScreenState {
  final int? basketSize;
  final int? favouriteSize;

  GeneralScreenState({this.basketSize, this.favouriteSize});

  GeneralScreenState copy(int? basketSize, int? favouriteSize) {
    return GeneralScreenState(basketSize: basketSize ?? this.basketSize, favouriteSize: favouriteSize ?? this.favouriteSize);
  }
}
