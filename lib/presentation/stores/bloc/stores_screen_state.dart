part of 'stores_screen_bloc.dart';

class ProfileTabState {
  AllStoresModel? allStoresModel;
  Status? status;

  ProfileTabState({this.allStoresModel, this.status});

  ProfileTabState copy({AllStoresModel? allStoresModel, Status? status}) {
    return ProfileTabState(
        allStoresModel: allStoresModel ?? this.allStoresModel,
        status: status ?? this.status);
  }
}
