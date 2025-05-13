import 'package:e401_ecommerce/components/mi_menu.dart';
import 'package:e401_ecommerce/components/mi_tarjeta_producto.dart';
import 'package:e401_ecommerce/models/tienda.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  @override
  Widget build(BuildContext context) {
    //acceder a los productos de la tienda
    final productos = context.watch<Tienda>().tienda;

    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text('Tienda')),
      drawer: MiMenu(),
      body: ListView(
        children: [
          SizedBox(height: 25),
          Center(
            child: Text(
              'La mejor selección de Productos Premium',
              style: TextStyle(
                color: theme.inversePrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              itemCount: productos.length,
              itemBuilder: (context, index) {
                //obtener cada uno de los productos
                final producto = productos[index];

                //mostrar los productos
                return MiTarjetaProducto(producto: producto);
              },
            ),
          ),
        ],
      ),
    );
  }
}
