part of 'favourite_screen_bloc.dart';

@immutable
abstract class FavouriteScreenEvent {}

class LoadAllData extends FavouriteScreenEvent{

}

class UpdateData extends FavouriteScreenEvent{
  ProductModelHive productModelHive;

  UpdateData(this.productModelHive);
}