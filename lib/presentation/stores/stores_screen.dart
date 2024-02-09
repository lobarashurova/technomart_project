import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_list_view/group_list_view.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:technomart_project/presentation/screens/all_maps_screen/AllMapsScreen.dart';
import 'package:technomart_project/util/app_lat_long.dart';

import '../../../../data/local/enum/Status.dart';
import '../screens/branch_map_screen/BranchMapScreen.dart';
import '../widgets/search_view.dart';
import '../widgets/stories_item.dart';
import 'bloc/stores_screen_bloc.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  final bloc = ProfileTabBloc();
  late List<AppLatLong> listLat = [];

  var searchController = TextEditingController();

  @override
  void initState() {
    bloc.add(LoadStoriesData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<ProfileTabBloc, ProfileTabState>(
        builder: (context, state) {
          return Scaffold(
            appBar: buildAppBar(),
            body: state.status==Status.Success ? SingleChildScrollView(
              child: Column(children: [
                InputSearch(context, searchController),
                if (state.status == Status.Success)
                  GroupListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    sectionsCount: state.allStoresModel?.data?.data
                            ?.where((element) => element.name != "Barchasi")
                            .toList()
                            .length ??
                        0,
                    countOfItemInSection: (int section) {
                      return state.allStoresModel?.data?.data
                          ?.where((element) => element.name != "Barchasi")
                          .toList()[section]
                              .openedStores?.length ??
                          0;
                    },
                    itemBuilder: (BuildContext context, IndexPath index) {
                      var data =
                      state.allStoresModel?.data?.data
                          ?.where((element) => element.name != "Barchasi")
                          .toList()[index.section];
                      listLat.add(AppLatLong(
                          lat: double.parse(
                              data?.openedStores?[index.index].lat ?? ""),
                          long: double.parse(
                              data?.openedStores?[index.index].long ?? "")));
                      return locationItem(
                          data?.name ?? "",
                          data?.openedStores?[index.index].address ?? "",
                          data?.openedStores?[index.index].workTime ?? "",
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BranchMapScreen(
                                    lat: data?.openedStores?[index.index].lat ?? "",
                                    long: data?.openedStores?[index.index].long ?? "",
                                  ),
                                ));
                          });
                    },
                    groupHeaderBuilder: (BuildContext context, int section) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: SizedBox(
                          height: 30,
                          child: Text(
                            state.allStoresModel?.data?.data
                                ?.where((element) => element.name != "Barchasi")
                                .toList()[section].name ??
                                "",
                            style: GoogleFonts.poppins(
                                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    sectionSeparatorBuilder: (context, section) =>
                        SizedBox(height: 10),
                  )
                else
                  const CircularProgressIndicator(
                    color: Colors.yellow,
                  )
              ]),
            ) :
                Center(child:  LoadingAnimationWidget.inkDrop(
                  size: 50, color: Colors.amber,
                ),)
          );
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.amberAccent,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      title: const Text(
        "Do'konlar",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AllMapsScreen(list: listLat)),
              );
            },
            icon: const Icon(Icons.map))
      ],
    );
  }
}
