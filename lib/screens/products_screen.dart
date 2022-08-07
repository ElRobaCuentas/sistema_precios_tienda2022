import 'package:flutter/material.dart';
import 'package:control_precios_tienda2022/models/models.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Subcategory products =
        ModalRoute.of(context)!.settings.arguments as Subcategory;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          products.subcategory,
        ),
      ),
      body: ListView.builder(
        itemCount: products.products.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, '/favoritos');
                }),
                splashColor: Colors.grey[200],
                child: ListTile(
                  title: Text(products.products[index].name),
                  subtitle: Text(
                      'Precio S/' + products.products[index].value.toString()),
                  trailing: const Icon(Icons.heart_broken_sharp),
                )),
          );
        },
        // padding: const EdgeInsets.all(10),
      ),
    );
  }
}
