import 'package:e401_ecommerce/components/mi_elemento_lista.dart';
import 'package:flutter/material.dart';

class MiMenu extends StatelessWidget {
  const MiMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //logo
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: theme.inversePrimary
                )
              ),
              SizedBox(height: 30),

              //tienda
              MiElementoLista(
                text: 'Tienda', 
                icon: Icons.home,
                onTap: ()=>Navigator.pop(context),
              ),

              //carrito
              MiElementoLista(
                text: "Carrito", 
                icon: Icons.shopping_cart,
                onTap: () {},
              ),
            ],
          ),

          //salir
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: MiElementoLista(
              text: 'Salir',
              icon: Icons.logout,
              onTap: (){},
            ),
          ),
        ],
      ),
    );
  }
}