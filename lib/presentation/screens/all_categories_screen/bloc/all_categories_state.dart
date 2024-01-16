part of 'all_categories_bloc.dart';

class AllCategoriesState {
 final  AllCategoriesModel? allCategoriesModel;
 final  Status? status;

  AllCategoriesState({this.allCategoriesModel, this.status});

  AllCategoriesState copy({AllCategoriesModel? allCategoriesModel, Status? status}) {
    return AllCategoriesState(
        allCategoriesModel: allCategoriesModel ?? this.allCategoriesModel,
        status: status ?? this.status);
  }
}
