import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomart_project/presentation/screens/all_categories_screen/all_categories_screen.dart';
import 'package:technomart_project/presentation/screens/general/basket/basket_screen.dart';
import 'package:technomart_project/presentation/screens/general/bloc/general_screen_bloc.dart';
import 'package:technomart_project/presentation/screens/general/favourite/favourite_screen.dart';
import 'package:technomart_project/presentation/screens/general/home/HomeScreen.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  final _controller = TextEditingController();
  List<Widget> bottomNavScreen = <Widget>[
    const HomeScreen(),
    const AllCategoriesScreen(),
    const BasketScreen(),
    const FavouriteScreen(),
    Container(
      color: Colors.amber,
    ),
  ];

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
          return Scaffold(
            body: bottomNavScreen[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.manage_search_outlined),
                  label: 'Catalog',
                ),
                BottomNavigationBarItem(
                  icon: Badge(
                    backgroundColor: state.basketSize!=0 ? Color(0xffffc300) : Colors.transparent,
                    label: Text(
                      state.basketSize!=0 ? state.basketSize.toString() :"",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    child: const Icon(Icons.shopping_cart_outlined),
                  ),
                  label: 'Basket',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  label: 'Favourites',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.perm_identity_outlined),
                  label: 'Profile',
                )
              ],
              currentIndex: selectedIndex,
              selectedItemColor: Colors.amber[800],
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                selectedIndex = index;
              },
            ),
          );
        },
      ),
    );
  }
}
