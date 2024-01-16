import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technomart_project/presentation/screens/all_categories_screen/bloc/all_categories_bloc.dart';
import 'package:technomart_project/presentation/screens/products/products_screen.dart';

import '../../../data/local/enum/Status.dart';

class AllCategoriesScreen extends StatefulWidget {
  const AllCategoriesScreen({super.key});

  @override
  State<AllCategoriesScreen> createState() => _AllCategoriesScreenState();
}

class _AllCategoriesScreenState extends State<AllCategoriesScreen> {
  final bloc = AllCategoriesBloc();

  @override
  void initState() {
    super.initState();
    bloc.add(LoadAllCategoriesData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<AllCategoriesBloc, AllCategoriesState>(
        builder: (context, state) {
          if (state.status == Status.Loading) {
            return const Scaffold(
              body: Center(
                  child: CircularProgressIndicator(
                color: Colors.amber,
              )),
            );
          } else if (state.status == Status.Success) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.amberAccent,
                title: const Text("All categories",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                centerTitle: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
              ),
              body: ListView.builder(
                  itemCount: state.allCategoriesModel?.data.categories?.length,
                  itemBuilder: (context, index) {
                    var list = state.allCategoriesModel?.data.categories;
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductsScreen(
                                      categoryName: list?[index].name,
                                      slug: list?[index].slug,
                                  firstChildSlug: list?[index].childs?[0].slug,
                                    )));
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.network(
                                  list?[index].smallImage ?? ""),
                            ),
                            Text(
                              list?[index].name ?? "",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(Icons.arrow_right),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            );
          } else {
            return const Scaffold(
                body: Center(
                    child: Text(
              "Error while connecting",
              style: TextStyle(color: Colors.black),
            )));
          }
        },
      ),
    );
  }
}
