import 'package:e401_ecommerce/models/tienda.dart';
import 'package:e401_ecommerce/pages/pages.dart';
import 'package:e401_ecommerce/pages/settings_page.dart';
import 'package:e401_ecommerce/themes/dark_mode.dart';
import 'package:e401_ecommerce/themes/light_mode.dart';
import 'package:e401_ecommerce/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Tienda()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeProvider.themeData.brightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light,
      routes: {
        '/intro_page': (context) => IntroPage(),
        '/shop_page': (context) => ShopPage(),
        '/cart_page': (context) => CartPage(),
        '/settings_page': (context) => SettingsPage(),
      },
    );
  }
}
