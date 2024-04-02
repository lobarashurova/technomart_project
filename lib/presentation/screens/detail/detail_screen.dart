import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:technomart_project/data/local/hive/model/product_model_hive.dart';
import 'package:technomart_project/data/source/model/product_data/product_model_by_id.dart';
import 'package:technomart_project/presentation/screens/charactes_screen/characters_screen.dart';
import 'package:technomart_project/presentation/screens/general/basket/basket_screen.dart';

import '../../../data/local/enum/Status.dart';
import 'bloc/detail_screen_bloc.dart';

class DetailScreen extends StatefulWidget {
  int? id;

  DetailScreen({super.key, this.id});

  @override
  State<DetailScreen> createState() => _DetailScreenState(id ?? 0);
}

class _DetailScreenState extends State<DetailScreen> {
  final bloc = DetailScreenBloc();
  int id;

  @override
  void initState() {
    bloc.add(LoadProductData(id));
    super.initState();
  }

  _DetailScreenState(this.id);

  CarouselController buttonCarouselController = CarouselController();
  var isFavourite = false;
  var isInBasket = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<DetailScreenBloc, DetailScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          var data = state.productModelById?.data?.data;
          bloc.add(CheckItem(data?.name ?? ""));
          return Scaffold(
              appBar: buildAppBar(state, data),
              body: state.status == Status.Success
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          buildExpandableCarousel(data),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Mavjud',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.greenAccent),
                                ),
                                Text("Kod.45612"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data?.name ?? '',
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "${data?.salePrice}  so'm",
                                style: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: ShapeDecoration(
                                  color: Colors.black12,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Muddatli to'lov:",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black87),
                                      ),
                                      Text(
                                        data?.monthlyPrice ?? '',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              // Padding(
                              //   padding: const EdgeInsets.symmetric(
                              //       horizontal: 10, vertical: 12),
                              //   child: Row(
                              //     mainAxisAlignment:
                              //         MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       // Padding(
                              //       //   padding: const EdgeInsets.only(
                              //       //       left: 8, right: 8, top: 8),
                              //       //   child: Text(
                              //       //     "Sharhlar",
                              //       //     style: GoogleFonts.nunitoSans(
                              //       //         fontSize: 18,
                              //       //         color: Colors.black,
                              //       //         fontWeight: FontWeight.w500),
                              //       //   ),
                              //       // ),
                              //       const Padding(
                              //         padding: EdgeInsets.only(left: 10),
                              //         child: Row(
                              //           children: [
                              //             Icon(
                              //               Icons.star,
                              //               color: Colors.black12,
                              //             ),
                              //             Icon(
                              //               Icons.star,
                              //               color: Colors.black12,
                              //             ),
                              //             Icon(
                              //               Icons.star,
                              //               color: Colors.black12,
                              //             ),
                              //             Icon(
                              //               Icons.star,
                              //               color: Colors.black12,
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              InkWell(
                                overlayColor: MaterialStatePropertyAll(Colors.amberAccent),

                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>  CharactersScreen(data?.characters ?? [])));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8, top: 8),
                                        child: Text(
                                          "Texnik xususiyatlar",
                                          style: GoogleFonts.nunitoSans(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.black12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, left: 8),
                                      child: Text(
                                        "Do'konlarda mavjud",
                                        style: GoogleFonts.nunitoSans(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.black12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ExpandablePanel(
                                  collapsed: data!.description!.isNotEmpty
                                      ? HtmlWidget(
                                          data.description!.substring(0, 50) ??
                                              "",
                                          textStyle: GoogleFonts.nunitoSans(
                                            color: Colors.black87,
                                            fontSize: 15,
                                          ))
                                      : Text("Tavsif mavjud emas",
                                          style: GoogleFonts.nunitoSans(
                                              color: Colors.black87,
                                              fontSize: 15)),
                                  expanded: data.description!.isNotEmpty
                                      ? HtmlWidget(data.description ?? "",
                                          textStyle: GoogleFonts.nunitoSans(
                                            color: Colors.black87,
                                            fontSize: 15,
                                          ))
                                      : Text("Tavsif mavjud emas",
                                          style: GoogleFonts.nunitoSans(
                                              color: Colors.black87,
                                              fontSize: 15)),
                                  header: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text("Tavsif",
                                        style: GoogleFonts.nunitoSans(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (!state.isBasket)
                            buildBaskButton(state, data)
                          else
                            buildBasketButton2(context)
                        ],
                      ),
                    )
                  : Center(
                      child: LoadingAnimationWidget.inkDrop(
                        size: 50,
                        color: Colors.amber,
                      ),
                    ));
        },
      ),
    );
  }

  Container buildBasketButton2(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BasketScreen()));
        },
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.amber),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        child: const Text(
          "Savatchada",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Container buildBaskButton(DetailScreenState state, ProductData? data) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            state.isBasket = true;
          });
          bloc.add(UpdateProducts(ProductModelHive(
              data?.name ?? "",
              data?.largeImages?.firstOrNull ?? "",
              state.isFavourite,
              true,
              data?.salePrice.toString() ?? "",
              data?.monthlyPrice.toString() ?? "",
              1)));
        },
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))))),
        child: const Text("Savatchaga qo'shish",
            style: TextStyle(color: Colors.white)),
      ),
    );
  }

  ExpandableCarousel buildExpandableCarousel(ProductData? data) {
    return ExpandableCarousel.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3,
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              margin: EdgeInsets.all(15),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.network(
                    data?.largeImages?[0] ?? "",
                    fit: BoxFit.contain,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 3,
                  )),
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
        initialPage: 0,
      ),
    );
  }

  AppBar buildAppBar(DetailScreenState state, ProductData? data) {
    return AppBar(
      backgroundColor: Colors.amberAccent,
      title: const Text("Product detail",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      centerTitle: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                state.isFavourite = !state.isFavourite;
              });
              bloc.add(UpdateProducts(ProductModelHive(
                  data?.name ?? "",
                  data?.largeImages?.firstOrNull ?? "",
                  state.isFavourite,
                  state.isBasket,
                  data?.salePrice.toString() ?? "",
                  data?.monthlyPrice ?? "",
                  1)));
            },
            icon: state.isFavourite!
                ? const Icon(Icons.favorite, color: Colors.red)
                : const Icon(Icons.favorite_border))
      ],
    );
  }
}
