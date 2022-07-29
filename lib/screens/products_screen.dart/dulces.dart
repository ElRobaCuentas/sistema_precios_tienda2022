import 'package:flutter/material.dart';

class DulcesScreen extends StatelessWidget {
  const DulcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const listDulces = ['Dulces Pequeños', 'Galletas', 'Chocolates', 'Otros'];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DULCES',
        ),
      ),
      body: ListView(
        children: [
          ...listDulces.map(
            (miniProducts) => ListTile(
              onTap: () {},
              title: Text(miniProducts),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          )
        ],
      ),
    );
  }
}
