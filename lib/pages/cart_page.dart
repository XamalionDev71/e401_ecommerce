import 'dart:js_interop';

import 'package:e401_ecommerce/models/producto.dart';
import 'package:e401_ecommerce/models/tienda.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void eliminarProductoDelCarrito(BuildContext context, Producto producto) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: Text('Desea eliminar este producto del carrito?'),
            actions: [
              //cancelar
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancelar'),
              ),

              //confirmar
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);

                  context.read<Tienda>().eliminarDelCarrito(producto);
                },
                child: Text('Si'),
              ),
            ],
          ),
    );
  }

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
                title: Text(item.nombre),
                subtitle: Text(item.precio.toStringAsFixed(2)),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
