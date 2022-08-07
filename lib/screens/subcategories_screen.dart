import 'package:control_precios_tienda2022/models/product_response.dart';
import 'package:flutter/material.dart';

class SubcategoriesScreen extends StatelessWidget {
  const SubcategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Category subcategories =
        ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          subcategories.category,
        ),
      ),
      body: ListView.builder(
        itemCount: subcategories.data.length,
        itemBuilder: (context, index) {
          final products = subcategories.data[index];
          return Card(
            child: InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, '/product', arguments: products);
                }),
                splashColor: Colors.grey[200],
                child: ListTile(
                  title: Text(subcategories.data[index].subcategory),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                )),
          );
        },
        // padding: const EdgeInsets.all(10),
      ),
    );
  }
}

















// body: ListView(
//         padding: const EdgeInsets.all(10),
//         children: [
//           Card(
//             child: InkWell(
//                 onTap: (() {
//                   Navigator.pushNamed(context, '/specificDulces');
//                 }),
//                 splashColor: Colors.grey[200],
//                 child: const ListTile(
//                   title: Text('Dulces Pequeños'),
//                   trailing: Icon(Icons.arrow_forward_ios_outlined),
//                 )),
//           ),
//           Card(
//             child: InkWell(
//                 onTap: (() {
//                   Navigator.pushNamed(context, '/specificGalletas');
//                 }),
//                 splashColor: Colors.grey[200],
//                 child: const ListTile(
//                   title: Text('Galletas'),
//                   trailing: Icon(Icons.arrow_forward_ios_outlined),
//                 )),
//           ),
//           Card(
//             child: InkWell(
//                 onTap: (() {
//                   Navigator.pushNamed(context, '/specificChocolates');
//                 }),
//                 splashColor: Colors.grey[200],
//                 child: const ListTile(
//                   title: Text('Chocolates'),
//                   trailing: Icon(Icons.arrow_forward_ios_outlined),
//                 )),
//           ),
//         ],
//       ),




































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