import 'package:e401_ecommerce/components/mi_menu.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda'),
      ),
      drawer: MiMenu(),
    );
  }
}