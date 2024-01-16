import 'package:flutter/material.dart';
import 'package:technomart_project/data/local/hive/box/product_database.dart';
import 'package:technomart_project/presentation/screens/splash/SplashScreen.dart';

import 'di/app_di.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await ProductDatabase.init();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen());
  }
}
