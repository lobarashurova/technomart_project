part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent {

}


class LoadAllCategoriesData extends HomeScreenEvent{

}

class LoadBySlugData extends HomeScreenEvent{
  String slug;

  LoadBySlugData(this.slug);
}
