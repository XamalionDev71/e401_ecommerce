import 'package:e401_ecommerce/models/producto.dart';
import 'package:flutter/material.dart';

class Tienda extends ChangeNotifier {
  //Lista de productos
  final List<Producto> _tienda = [
    Producto(
      nombre: 'Lentes',
      precio: 159.99,
      descripcion: 'Veniam ut id culpa id nostrud qui.',
      rutaImagen: 'assets/glasses.png',
    ),
    Producto(
      nombre: 'Sudadera',
      precio: 569.99,
      descripcion: 'Non tempor occaecat sint duis nostrud magna proident.',
      rutaImagen: 'assets/hoodie.png',
    ),
    Producto(
      nombre: 'Reloj',
      precio: 2349.29,
      descripcion: 'Cupidatat commodo officia aute aliqua velit mollit proident aute anim.',
      rutaImagen: 'assets/watch.png',
    ),
    Producto(
      nombre: 'Tenis',
      precio: 8999.99,
      descripcion: 'Do eiusmod consequat ipsum nulla reprehenderit eiusmod anim dolor dolor cillum aliqua enim.',
      rutaImagen: 'assets/shoes.png',
    ),
  ];

  //Carrito de compras del usuario
  List<Producto> _carrito = [];

  //Obtener la lista de productos
  List<Producto> get tienda => _tienda;

  //Obtener carrito de compras
  List<Producto> get carrito => _carrito;

  //agregar productos al carrito
  void agregarAlCarrito(Producto producto) {
    _carrito.add(producto);
    notifyListeners();
  }

  //eliminar productos del carrito
  void eliminarDelCarrito(Producto producto) {
    _carrito.remove(producto);
    notifyListeners();
  }
}
