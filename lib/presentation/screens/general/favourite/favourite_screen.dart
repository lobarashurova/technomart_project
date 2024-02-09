import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/local/hive/model/product_model_hive.dart';
import 'bloc/favourite_screen_bloc.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final bloc = FavouriteScreenBloc();
  var isInBasket = false;
  var isFavourite = true;

  @override
  void initState() {
    super.initState();
    bloc.add(LoadAllData());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<FavouriteScreenBloc, FavouriteScreenState>(
        builder: (context, state) {
          bloc.add(LoadAllData());
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amberAccent,
              title: const Text("All favourites",
                  style: TextStyle(
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
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.6,
                        ),
                        itemCount: state.list?.length ?? 0,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: buildFavouriteItem(size, state, index),
                          );
                        }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container buildFavouriteItem(
      double size, FavouriteScreenState state, int index) {
    return Container(
      width: size / 2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                state.list![index].image,
                fit: BoxFit.contain,
                height: 150,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: 140,
                child: Text(state.list?[index].name ?? "",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 11)),
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
                  child: Text(state.list?[index]?.monthlyCost.toString() ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 9)),
                ),
              ),
              SizedBox(
                width: 140,
                child: Text("${state.list?[index].costProduct} so'm",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 14)),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          state.list![index].isFavourite =
                              !state.list![index].isFavourite;
                          bloc.add(UpdateData(ProductModelHive(
                              state.list![index].name,
                              state.list![index].image,
                              state.list![index].isFavourite,
                              state.list![index].isBasket,
                              state.list![index].costProduct,
                              state.list![index].monthlyCost,
                              state.list![index].countInBasket)));
                        });
                      },
                      icon: state.list![index].isFavourite
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(Icons.favorite_border)),
                  const Spacer(
                    flex: 1,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          state.list![index].isBasket =
                              !state.list![index].isBasket;
                        });
                        bloc.add(UpdateData(ProductModelHive(
                            state.list![index].name,
                            state.list![index].image,
                            state.list![index].isFavourite,
                            state.list![index].isBasket,
                            state.list![index].costProduct,
                            state.list![index].monthlyCost,
                            state.list![index].countInBasket)));
                      },
                      icon: state.list![index].isBasket
                          ? const Icon(Icons.shopping_cart)
                          : const Icon(Icons.shopping_cart_outlined))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
