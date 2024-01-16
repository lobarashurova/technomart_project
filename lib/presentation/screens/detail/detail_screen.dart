import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:technomart_project/data/local/hive/model/product_model_hive.dart';
import 'package:technomart_project/presentation/screens/general/basket/basket_screen.dart';

import 'bloc/detail_screen_bloc.dart';

class DetailScreen extends StatefulWidget {
  String? allData;

  DetailScreen({super.key, this.allData});

  @override
  State<DetailScreen> createState() => _DetailScreenState(allData ?? "");
}

class _DetailScreenState extends State<DetailScreen> {
  final bloc = DetailScreenBloc();
  String allData;
  var characters = ["Mavjud", "Imkoniyat", "Sharoit", "Quvvat"];

  _DetailScreenState(this.allData);

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
          var list = allData.split("#").toList();
          String? name = list[0];
          String? image = list[1];
          String? allCount = list[2];
          String? loanPrice = list[3];
          String? floanPrice = list[4];
          String? axiomMonthlyPrice = list[5];
          bloc.add(CheckItem(name));

          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.amberAccent,
                title: const Text("Product name",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
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
                            name,
                            image,
                            state.isFavourite,
                            state.isBasket,
                            loanPrice,
                            axiomMonthlyPrice,
                            1)));
                      },
                      icon: state.isFavourite!
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(Icons.favorite_border))
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    ExpandableCarousel.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) {
                        return Container(
                          width: double.infinity,
                          height: 250,
                          margin: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 15),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height / 3,
                              margin: EdgeInsets.all(15),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  child: Image.network(
                                    image,
                                    fit: BoxFit.contain,
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
                        initialPage: 2,
                      ),
                    ),
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
                          Text("Kod.45612}"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        name ?? '',
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
                          "${loanPrice}  so'm",
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  axiomMonthlyPrice ?? '',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 210,
                            child: Text("Muddati" ?? '',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Text(characters[0],
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ),
                    for (String i in characters)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 210,
                              child: Text(i ?? '',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            Text(i,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                    if (!state.isBasket)
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              state.isBasket = true;
                            });
                            bloc.add(UpdateProducts(ProductModelHive(
                                name,
                                image,
                                state.isFavourite,
                                true,
                                loanPrice,
                                axiomMonthlyPrice,
                                1)));
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.amber),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))))),
                          child: const Text("Savatchaga qo'shish"),
                        ),
                      )
                    else
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BasketScreen()));
                          },
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.amber),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          child: const Text(
                            "Savatchada",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
