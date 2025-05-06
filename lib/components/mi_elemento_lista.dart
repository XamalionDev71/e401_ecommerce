import 'package:flutter/material.dart';

class MiElementoLista extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onTap;

  const MiElementoLista({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ListTile(
        leading: Icon(
          icon,
          color: theme.inversePrimary,
        ),
        title: Text(text),
        onTap: onTap,
      ),
    );
  }
}
