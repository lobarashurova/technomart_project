import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/local/hive/model/product_model_hive.dart';
import 'bloc/basket_screen_bloc.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  final bloc = BasketScreenBloc();
  var count = 1;

  @override
  void initState() {
    super.initState();
    bloc.add(LoadAllData());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    var isFavourite = false;
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<BasketScreenBloc, BasketScreenState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amberAccent,
              title: const Text("All products in basket",
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
                    width: size,
                    margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: ListView.builder(
                        itemCount: state.list?.length ?? 0,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var item = state.list![index];
                          return InkWell(
                            onTap: (){

                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 120,
                                      height: 150,
                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Image.network(item.image ?? ''),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 160,
                                          child: Text(
                                            item.name ?? '',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 160,
                                          child: Text(
                                            "${item.costProduct ?? ''} сум",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 160,
                                          decoration: BoxDecoration(
                                            color: const Color(0x15000000),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 2.0,
                                              left: 5.0,
                                              bottom: 2.0,
                                              right: 3,
                                            ),
                                            child: Text(
                                              item.monthlyCost.toString() ?? '',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 120,
                                          height: 40,
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(onPressed: (){
                                                setState(() {
                                                  if (item.countInBasket > 1) {
                                                    item.countInBasket--;
                                                  }
                                                  bloc.add(UpdateData(
                                                      ProductModelHive(
                                                          item.name,
                                                          item.image,
                                                          item.isFavourite,
                                                          true,
                                                          item.costProduct,
                                                          item.monthlyCost,
                                                          item.countInBasket)));
                                                });
                                              }, icon: Image.asset("assets/images/minus.png", width: 15, height: 15,)),
                                              Text(
                                              item.countInBasket==0 ? "1" :  item.countInBasket.toString(),
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      item.countInBasket++;
                                                    });
                                                    bloc.add(UpdateData(
                                                        ProductModelHive(
                                                            item.name,
                                                            item.image,
                                                            item.isFavourite,
                                                            true,
                                                            item.costProduct,
                                                            item.monthlyCost,
                                                            item.countInBasket)));
                                                  },
                                                  icon: const Icon(Icons.add))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 48.0),
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    bloc.add(UpdateData(
                                                        ProductModelHive(
                                                            item.name,
                                                            item.image,
                                                            item.isFavourite,
                                                            false,
                                                            item.costProduct,
                                                            item.monthlyCost,
                                                            0)));
                                                    bloc.add(LoadAllData());
                                                  },
                                                  icon: Icon(Icons.delete_outlined)),
                                              IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    item.isFavourite = !item.isFavourite;
                                                    bloc.add(UpdateData(
                                                        ProductModelHive(
                                                            item.name,
                                                            item.image,
                                                            item.isFavourite,
                                                            item.isBasket,
                                                            item.costProduct,
                                                            item.monthlyCost,
                                                            0)));
                                                  });

                                                },
                                                icon: item.isFavourite
                                                    ? const Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      )
                                                    : const Icon(
                                                        Icons.favorite_border),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(height: 2,color: Colors.grey,)
                              ],
                            
                            ),
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
}
