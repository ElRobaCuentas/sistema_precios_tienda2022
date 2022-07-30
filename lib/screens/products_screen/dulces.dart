import 'package:flutter/material.dart';

class DulcesScreen extends StatelessWidget {
  const DulcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DULCES',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            child: InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, '/specificDulces');
                }),
                splashColor: Colors.grey[200],
                child: const ListTile(
                  title: Text('Dulces Pequeños'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                )),
          ),
          Card(
            child: InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, '/specificGalletas');
                }),
                splashColor: Colors.grey[200],
                child: const ListTile(
                  title: Text('Galletas'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                )),
          ),
          Card(
            child: InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, '/specificChocolates');
                }),
                splashColor: Colors.grey[200],
                child: const ListTile(
                  title: Text('Chocolates'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                )),
          ),
        ],
      ),
    );
  }
}















// class DulcesPequenos extends StatelessWidget {
//   const DulcesPequenos({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: (() {}),
//       child: Row(
//         children: const [
//           Text(
//             'Dulces Pequeños',
//             style: TextStyle(color: Colors.black),
//           ),
//           Icon(
//             Icons.arrow_forward_ios_outlined,
//             color: Colors.black,
//           )
//         ],
//       ),
//     );
//   }
// }







































// const listDulces = ['Dulces Pequeños', 'Galletas', 'Chocolates', 'Otros'];

// children: [
        //   ...listDulces.map(
        //     (miniProducts) => ListTile(
        //       onTap: () {
        //         Navigator.pushNamed(context, '/bebidas');
        //       },
        //       title: Text(miniProducts),
        //       trailing: const Icon(Icons.arrow_forward_ios_outlined),
        //     ),
        //   )
        // ],