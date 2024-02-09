import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:technomart_project/data/local/enum/Status.dart';
import 'package:technomart_project/presentation/screens/detail/detail_screen.dart';
import 'package:technomart_project/presentation/screens/products/bloc/products_screen_bloc.dart';

class ProductsScreen extends StatefulWidget {
  final String? slug;
  final String? categoryName;
  final String? firstChildSlug;

  ProductsScreen(
      {super.key, this.slug, this.categoryName, this.firstChildSlug});

  @override
  State<ProductsScreen> createState() =>
      _ProductsScreenState(slug, categoryName, firstChildSlug);
}

class _ProductsScreenState extends State<ProductsScreen> {
  final String? slug;
  final String? titleName;
  int? _value = 0;
  final bloc = ProductsScreenBloc();
  final String? firstChild;
  var isFavourite = false;
  var isBasket = false;

  _ProductsScreenState(this.slug, this.titleName, this.firstChild);

  @override
  void initState() {
    super.initState();
    bloc.add(LoadAllCategoriesChild(slug ?? ""));
    bloc.add(LoadBySlug(firstChild));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<ProductsScreenBloc, ProductsScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.status == Status.Loading) {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.amberAccent,
                  title: Text(titleName ?? "",
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  centerTitle: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                ),
                body: Stack(children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Wrap(
                      spacing: 5.0,
                      children: List<Widget>.generate(
                        state.allCategoriesModel?.data.categories?.length ?? 0,
                        (int index) {
                          var list = state.allCategoriesModel?.data.categories;
                          return ChoiceChip(
                            label: Text(list?[index ?? 0].name ?? ""),
                            selected: _value == index,
                            onSelected: (bool selected) {
                              bloc.add(LoadBySlug(list?[index].slug ?? ""));
                              setState(() {
                                _value = selected ? index : null;
                              });
                            },
                          );
                        },
                      ).toList(),
                    ),
                  ),
                   Align(
                    alignment: Alignment.center,
                    child:  LoadingAnimationWidget.inkDrop(
                    size: 50, color: Colors.amber,
                  ),
                  )
                ]));
          } else if (state.status == Status.Success) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.amberAccent,
                title: Text(titleName ?? "",
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                centerTitle: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      spacing: 5.0,
                      children: List<Widget>.generate(
                        state.allCategoriesModel?.data.categories?.length ?? 0,
                        (int index) {
                          var list = state.allCategoriesModel?.data.categories;
                          return ChoiceChip(
                            label: Text(list?[index ?? 0].name ?? ""),
                            selected: _value == index,
                            onSelected: (bool selected) {
                              bloc.add(LoadBySlug(list?[index].slug ?? ""));

                              setState(() {
                                _value = selected ? index : null;
                              });
                            },
                          );
                        },
                      ).toList(),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                                childAspectRatio: 0.6
                          ),
                          itemCount:
                              state.productsBySlug?.data?.products?.length ?? 0,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var item =
                                state.productsBySlug?.data?.products?[index];
                            bloc.add(CheckProduct(item?.name ?? ""));
                            return InkWell(
                                onTap: () {
                                  final data =
                                      state.productsBySlug?.data?.products;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailScreen(
                                                id: data?[index].id ?? 0,
                                              )));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                        width: 140,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child:
                                            CachedNetworkImage(
                                               imageUrl: item?.image ?? "",
                                                progressIndicatorBuilder: (context, url, downloadProgress) =>
                                                    CircularProgressIndicator(value: downloadProgress.progress, color: Colors.amberAccent,)))),
                                    Container(
                                      width: 140,
                                      child: Text(item?.name ?? "",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11)),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(bottom: 10),
                                      width: 140,
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0,
                                            left: 5.0,
                                            bottom: 2.0,
                                            right: 3),
                                        child: Text(
                                            item?.axiomMonthlyPrice
                                                    .toString() ??
                                                "",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 9)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 140,
                                      child: Text(
                                          "${item?.salePrice.toString()} so'm",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14)),
                                    ),
                                  ],
                                ));
                          }),
                    )
                  ],
                ),
              ),
            );
          } else {
            return Text("");
          }
        },
      ),
    );
  }
}
