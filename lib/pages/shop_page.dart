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

    return Scaffold(
      appBar: AppBar(title: Text('Tienda')),
      drawer: MiMenu(),
      body: ListView.builder(
        itemCount: productos.length,
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          //obtener cada uno de los productos
          final producto = productos[index];

          //regresar la tarjeta del producto UI
          return MiTarjetaProducto(producto: producto);
        },
      ),
    );
  }
}
