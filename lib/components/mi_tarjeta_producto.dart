import 'package:e401_ecommerce/models/producto.dart';
import 'package:flutter/material.dart';

class MiTarjetaProducto extends StatelessWidget {
  final Producto producto;

  const MiTarjetaProducto({
    super.key,
    required this.producto
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Imagen del producto
        Icon(Icons.favorite),

        //nombre del producto
        Text(producto.nombre),

        //descriupción del producto
        Text(producto.descripcion),

        //precio del producto
        Text(producto.precio.toStringAsFixed(2)),
      ],
    );
  }
}
