part of 'basket_screen_bloc.dart';

@immutable
abstract class BasketScreenEvent {}

class LoadAllData extends BasketScreenEvent{

}


class UpdateData extends BasketScreenEvent{
  ProductModelHive productModelHive;
  UpdateData(this.productModelHive);
}
