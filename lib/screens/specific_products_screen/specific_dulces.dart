import 'package:flutter/material.dart';

class SpecificDulcesScreen extends StatelessWidget {
  const SpecificDulcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dulces{DulcesPequeños}')),
      body: ListView(
        children: [
          Card(
            child: InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, '/favoritos');
                }),
                splashColor: Colors.grey[200],
                child: const ListTile(
                  title: Text('BLACKOUT'),
                  subtitle: Text('Precio S/1.00'),
                  trailing: Icon(Icons.heart_broken_sharp),
                )),
          ),
        ],
      ),
    );
  }
}
















// Forma eficiente pero mas dificil, nose como poner el ruteo a cada uno, ya que todo es uno solo

// final tituloProducto = ['BLACKOUT', 'TENTACIÓN', 'CASINO', 'GLASITAS'];

    // final precioProducto = [
    //   'Precio S/1.00',
    //   'Precio S/2.00',
    //   'Precio S/1.50',
    //   'Precio S/1.20'
    // ];

    // return Scaffold(
    //     appBar: AppBar(title: Text('Dulces{DulcesPequeños}')),
    //     body: ListView.separated(
    //         itemCount: tituloProducto.length,
    //         itemBuilder: (context, index) => ListTile(
    //               title: Text(tituloProducto[index]),
    //               trailing: Icon(Icons.heart_broken_sharp),
    //               subtitle: Text(precioProducto[index]),
    //             ),
    //         separatorBuilder: (context, index) => const Divider()));