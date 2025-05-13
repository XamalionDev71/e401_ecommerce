import 'package:e401_ecommerce/models/producto.dart';
import 'package:flutter/material.dart';

class MiTarjetaProducto extends StatelessWidget {
  final Producto producto;

  const MiTarjetaProducto({super.key, required this.producto});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: theme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        children: [
          //imagen
          Container(
            child: Icon(Icons.favorite),
          ),

          //nombre del producto
          Text(producto.nombre),

          //descripción
          Text(producto.descripcion),

          //precio del producto + botón agregar al carrito
          Text(producto.precio.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
