import 'package:e401_ecommerce/models/tienda.dart';
import 'package:e401_ecommerce/pages/cart_page.dart';
import 'package:e401_ecommerce/pages/intro_page.dart';
import 'package:e401_ecommerce/pages/shop_page.dart';
import 'package:e401_ecommerce/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Tienda(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page':(context) => IntroPage(),
        '/shop_page': (_) => ShopPage(),
        '/cart_page': (_) => CartPage(),
      },
    );
  }
}
