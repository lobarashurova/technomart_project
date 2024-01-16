part of 'home_screen_bloc.dart';

class HomeScreenState {
  Status? status;
  TopCategoriesModel? topCategoriesModel;
  SliderModel? sliderModel;
  TopProductsModel? topProductsModel;
  ProductsBySlug? allCategoriesItem;

  HomeScreenState(
      {this.status,
      this.topCategoriesModel,
      this.sliderModel,
      this.topProductsModel,
      this.allCategoriesItem});

  HomeScreenState copy(
          {Status? status,
          TopCategoriesModel? topCategoriesModel,
          SliderModel? sliderModel,
          TopProductsModel? topProductsModel,
          ProductsBySlug? allCategoriesItem}) =>
      HomeScreenState(
          status: status ?? this.status,
          topCategoriesModel: topCategoriesModel ?? this.topCategoriesModel,
          sliderModel: sliderModel ?? this.sliderModel,
          topProductsModel: topProductsModel ?? this.topProductsModel,
          allCategoriesItem: allCategoriesItem ?? this.allCategoriesItem);
}
