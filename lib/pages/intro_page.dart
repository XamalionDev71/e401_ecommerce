import 'package:e401_ecommerce/components/mi_boton.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Icon(Icons.shopping_bag,size: 92, color: theme.inversePrimary,),

            //Nombre de la tienda
            Text(
              'Tienda Minimalista',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ),

            //Subtitulo
            Text('Productos Calidad Premium'),
            SizedBox(height: 30),

            //Boton
            MiBoton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'), 
              child: Icon(Icons.arrow_forward)
            ),
          ],
        )
      ),
    );
  }
}
