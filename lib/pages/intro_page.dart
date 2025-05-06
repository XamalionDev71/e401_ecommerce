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
            Icon(Icons.shopping_bag,size: 72,color: theme.inversePrimary),
            SizedBox(height: 30),

            //Titulo
            Text(
              'Tienda Minimalista',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            SizedBox(height: 10),

            //Subtitulo
            Text('Productos Calidad Premium'),

            //Botón
            
          ],
        ),
      ),
    );
  }
}
