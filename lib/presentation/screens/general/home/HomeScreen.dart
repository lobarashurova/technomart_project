import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:technomart_project/data/local/enum/Status.dart';
import 'package:technomart_project/data/source/model/top_products/top_products.dart';
import 'package:technomart_project/presentation/screens/all_categories_screen/all_categories_screen.dart';
import 'package:technomart_project/presentation/screens/products/products_screen.dart';

import '../../detail/detail_screen.dart';
import 'bloc/home_screen_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bloc = HomeScreenBloc();
  CarouselController buttonCarouselController = CarouselController();

  @override
  void initState() {
    bloc.add(LoadAllCategoriesData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.status == Status.Loading) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: LoadingAnimationWidget.inkDrop(
                  size: 50,
                  color: Colors.amber,
                ),
              ),
            );
          } else if (state.status == Status.Success) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBar(),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 8, horizontal: 10),
                    //   child: buildExpandableCarousel(state),
                    // ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: buildTopCategories(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: SizedBox(
                        height: 150,
                        child: builTopProducts(state),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Top products",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.6,
                          ),
                          itemCount: state.topProductsModel?.data?.data.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final data =
                                state.topProductsModel?.data?.data[index];
                            var size = MediaQuery.of(context).size.width;
                            return InkWell(
                              overlayColor: MaterialStatePropertyAll(Colors.amberAccent),
                              onTap: () {
                                final data =
                                    state.topProductsModel?.data?.data[index];
                                pushNewScreen(
                                  context,
                                  screen:  DetailScreen(
                                    id: data?.id,
                                  ),
                                  withNavBar: true,
                                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                );

                              },
                              child: buildTopItems(data),
                            );
                          }),
                    )
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: Text(
                "Error occured",
                style: TextStyle(color: Colors.black),
              ),
            );
          }
        },
      ),
    );
  }

  Column buildTopItems(TopProductItemData? data) {
    return Column(
      children: [
        Container(
            width: 140,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
                alignment: Alignment.center,
                child: CachedNetworkImage(
                    imageUrl: data?.image ?? "",
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            LinearProgressIndicator(
                              value: downloadProgress.progress,
                              color: Colors.amberAccent,
                            ))
            )
        ),
        SizedBox(
          width: 140,
          child: Text(data?.name ?? "",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.start,
              style:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 11)),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(bottom: 10),
          width: 140,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 15,
                height: 15,
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 15,
                height: 15,
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 15,
                height: 15,
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 15,
                height: 15,
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 140,
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: const Color(0x15000000),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 2.0, left: 5.0, bottom: 2.0, right: 3),
            child: Text(data?.axiomMonthlyPrice.toString() ?? "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 9)),
          ),
        ),
        SizedBox(
          width: 140,
          child: Text("${data?.salePrice.toString()} so'm",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style:
                  const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
        ),
      ],
    );
  }

  ListView builTopProducts(HomeScreenState state) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: state.topCategoriesModel?.data?.data?.length ?? 0,
        itemBuilder: (
          context,
          index,
        ) {
          var categoriesList = state.topCategoriesModel?.data?.data;
          return Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                InkWell(
                  child: Container(
                    width: 75,
                    height: 75,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductsScreen(
                                      slug: categoriesList?[index].slug,
                                      categoryName:
                                          categoriesList?[index].title,
                                      firstChildSlug:
                                          categoriesList?[index].slug,
                                    )));
                      },
                      child: SvgPicture.network(
                        categoriesList?[index].image ?? "",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "${categoriesList?[index].title}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          );
        });
  }

  Row buildTopCategories(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Kategoriyalar",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        InkWell(
          onTap: () {
            pushNewScreen(
              context,
              screen: const AllCategoriesScreen(),
              withNavBar: true,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: const Row(
            children: [
              Text(
                "barchasi",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.blue,
              )
            ],
          ),
        )
      ],
    );
  }

  ExpandableCarousel buildExpandableCarousel(HomeScreenState state) {
    return ExpandableCarousel.builder(
      itemCount: state.sliderModel?.data.data?.length ?? 0,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        var sliderList = state.sliderModel?.data.data ?? [];
        return Container(
          width: double.infinity,
          height: 200,
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.network(
              sliderList[itemIndex].imageMobileWeb ?? "",
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        controller: buttonCarouselController,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 2,
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
        "Tech Shop",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
      ),
      centerTitle: true,
    );
  }
}
