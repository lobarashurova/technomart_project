import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:technomart_project/presentation/screens/all_categories_screen/all_categories_screen.dart';
import 'package:technomart_project/presentation/screens/general/basket/basket_screen.dart';
import 'package:technomart_project/presentation/screens/general/bloc/general_screen_bloc.dart';
import 'package:technomart_project/presentation/screens/general/favourite/favourite_screen.dart';
import 'package:technomart_project/presentation/screens/general/home/HomeScreen.dart';
import 'package:technomart_project/presentation/screens/general/profile/profile_tab.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  List<Widget> bottomNavScreen() {
    return [
      const HomeScreen(),
      const AllCategoriesScreen(),
      const BasketScreen(),
      const FavouriteScreen(),
      // const ProfileTab()
    ];
  }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  int currentTab = 0;
  int selectedIndex = 0;
  final bloc = GeneralScreenBloc();

  @override
  void initState() {
    bloc.add(UpdateSize());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<GeneralScreenBloc, GeneralScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          bloc.add(UpdateSize());
          return PersistentTabView(
            context,
            controller: _controller,
            screens: bottomNavScreen(),
            items: [
              PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.home),
                title: "Bosh sahifa",
                activeColorPrimary: CupertinoColors.black,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.search_circle),
                title: "Kataloglar",
                activeColorPrimary: CupertinoColors.black,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Badge(
                    backgroundColor:state.basketSize!=0 ?  Colors.amberAccent : Colors.transparent,
                    label: Text(
                      state.basketSize != 0 ? state.basketSize.toString() : "",
                      style: const TextStyle(color: Colors.black),
                    ),
                    child: const Icon(CupertinoIcons.shopping_cart)),
                title: "Settings",
                activeColorPrimary: CupertinoColors.black,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Badge(
                    backgroundColor: state.favouriteSize!=0 ?  Colors.amberAccent : Colors.transparent,
                    label: Text(
                      state.favouriteSize != 0
                          ? state.favouriteSize.toString()
                          : "",
                      style: TextStyle(color: Colors.black),
                    ),
                    child: Icon(Icons.favorite_border)),
                title: "Favourites",
                activeColorPrimary: CupertinoColors.black,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              // PersistentBottomNavBarItem(
              //   icon: const Icon(CupertinoIcons.person),
              //   title: "Profil",
              //   activeColorPrimary: CupertinoColors.black,
              //   inactiveColorPrimary: CupertinoColors.systemGrey,
              // ),
            ],
            confineInSafeArea: true,
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
            hideNavigationBarWhenKeyboardShows: true,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style6,
          );
        },
      ),
    );
  }
}
