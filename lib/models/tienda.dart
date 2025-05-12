import 'package:e401_ecommerce/models/producto.dart';

class Tienda {
  //Lista de productos
  final List<Producto> _tienda = [
    Producto(
      nombre: 'Producto 1',
      precio: 99.99,
      descripcion: 'Descripción del producto 1',
      rutaImagen: '',
    ),
    Producto(
      nombre: 'Producto 2',
      precio: 99.99,
      descripcion: 'Descripción del producto 2',
      rutaImagen: '',
    ),
    Producto(
      nombre: 'Producto 3',
      precio: 99.99,
      descripcion: 'Descripción del producto 3',
      rutaImagen: '',
    ),
    Producto(
      nombre: 'Producto 4',
      precio: 99.99,
      descripcion: 'Descripción del producto 4',
      rutaImagen: '',
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
  }

  //eliminar productos del carrito
  void eliminarDelCarrito(Producto producto) {
    _carrito.remove(producto);
  }
}
