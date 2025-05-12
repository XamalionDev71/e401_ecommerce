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
        //imagen
        Icon(Icons.favorite),

        //nombre del producto
        Text(producto.nombre),

        //descripción
        Text(producto.descripcion),

        //precio del producto + botón agregar al carrito
        Text(producto.precio.toStringAsFixed(2)),
      ],
    );
  }
}
