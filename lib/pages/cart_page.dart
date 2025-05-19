import 'package:e401_ecommerce/models/tienda.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    final carrito = context.watch<Tienda>().carrito;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: theme.inversePrimary,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Carrito de Compras'),
      ),
      backgroundColor: theme.surface,
      body: Column(
        children: [
          ListView.builder(
            itemCount: carrito.length,
            itemBuilder: (context, index) {
              final item = carrito[index];

              return ListTile(
                
              );
            },
          ),
        ],
      ),
    );
  }
}
