import 'package:e401_ecommerce/components/mi_elemento_lista.dart';
import 'package:flutter/material.dart';

class MiMenu extends StatelessWidget {
  const MiMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Drawer(
      child: Column(
        children: [
          //Logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: theme.inversePrimary,
              ),
            ),
          ),
          SizedBox(height: 25),

          //Tienda
          MiElementoLista(text: 'Tienda', icon: Icons.home, onTap: () {}),

          //Carrito de compras
          MiElementoLista(
            text: 'Carrito',
            icon: Icons.shopping_cart,
            onTap: () {
              //primeramente salimos del drawer
              Navigator.pop(context);

              //Navegar a la página del carrito de compras
              Navigator.pushNamed(context, '/cart_page');
            },
          ),

          //Salir
          MiElementoLista(text: 'Salir', icon: Icons.logout, onTap: () {}),
        ],
      ),
    );
  }
}
