import 'package:control_precios_tienda2022/models/models.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final List<Category> categories;

  const CardWidget({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (this.categories.length == 0) {
      return Container(
        width: double.infinity,
        height: size.height * 0.5,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Expanded(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final subcategories = categories[index];

          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/subcategory',
                    arguments: subcategories);
              },
              splashColor: Colors.grey[200],
              child: Center(
                child: Text(
                  categories[index].category,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Expanded(
  //     child: GridView.count(
  //       padding: const EdgeInsets.all(30),
  //       mainAxisSpacing: 20,
  //       crossAxisCount: 2,
  //       children: [
  //         Card(
  //           child: InkWell(
  //             onTap: () {
  //               Navigator.pushNamed(context, '/dulces');
  //             },
  //             splashColor: Colors.grey[200],
  //             child: const Center(
  //               child: Text(
  //                 'Dulces',
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  //               ),
  //             ),
  //           ),
  //         ),
  //         Card(
  //           child: InkWell(
  //             onTap: () {
  //               Navigator.pushNamed(context, '/bebidas');
  //             },
  //             splashColor: Colors.grey[200],
  //             child: const Center(
  //               child: Text(
  //                 'Bebidas',
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  //               ),
  //             ),
  //           ),
  //         ),
  //         Card(
  //           child: InkWell(
  //             onTap: () {
  //               Navigator.pushNamed(context, '/abarrotes');
  //             },
  //             splashColor: Colors.grey[200],
  //             child: const Center(
  //               child: Text(
  //                 'Abarrotes',
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  //               ),
  //             ),
  //           ),
  //         ),
  //         Card(
  //           child: InkWell(
  //             onTap: () {
  //               Navigator.pushNamed(context, '/limpieza');
  //             },
  //             splashColor: Colors.grey[200],
  //             child: const Center(
  //               child: Text(
  //                 'Limpieza',
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  //               ),
  //             ),
  //           ),
  //         ),
  //         Card(
  //           child: InkWell(
  //             onTap: () {
  //               Navigator.pushNamed(context, '/otros');
  //             },
  //             splashColor: Colors.grey[200],
  //             child: const Center(
  //               child: Text(
  //                 'Todo',
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

}
