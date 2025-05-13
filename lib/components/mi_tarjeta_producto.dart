import 'package:e401_ecommerce/models/producto.dart';
import 'package:e401_ecommerce/models/tienda.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MiTarjetaProducto extends StatelessWidget {
  final Producto producto;

  const MiTarjetaProducto({super.key, required this.producto});

  void agregarAlCarrito(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: Text('Agregar este producto al carrito?'),
            actions: [
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancelar'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  context.read<Tienda>().agregarAlCarrito(producto);
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

    return Container(
      decoration: BoxDecoration(
        color: theme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //imagen
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  child: Icon(Icons.favorite),
                ),
              ),
              SizedBox(height: 25),

              //nombre del producto
              Text(
                producto.nombre,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),

              //descripción
              Text(
                producto.descripcion,
                style: TextStyle(color: theme.inversePrimary),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //precio del producto + botón agregar al carrito
              Text(producto.precio.toStringAsFixed(2)),

              //Botón de agregar al carrito
              Container(
                decoration: BoxDecoration(
                  color: theme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => agregarAlCarrito(context),
                  icon: Icon(Icons.add)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
