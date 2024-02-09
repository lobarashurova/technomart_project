import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:technomart_project/presentation/screens/general/GeneralScreen.dart';

import '../../../data/source/model/product_data/product_model_by_id.dart';
import '../general/home/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final data1=MainCharacterElement("", "");
    final data2=MainCharacterElement("", "");
    print("equality:${data1 == data2}");
    Future.delayed(const Duration(milliseconds: 2000), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GeneralScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lotties/splash.json',
                  width: 250,
                  height: 250,
                  fit: BoxFit.fill,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Technomart",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
