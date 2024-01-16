part of 'general_screen_bloc.dart';

class GeneralScreenState {
  final int? basketSize;

  GeneralScreenState({this.basketSize});

  GeneralScreenState copy(int? basketSize) {
    return GeneralScreenState(basketSize: basketSize ?? this.basketSize);
  }
}
