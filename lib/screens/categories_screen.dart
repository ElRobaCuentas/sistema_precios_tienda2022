import 'package:control_precios_tienda2022/provider/products_provider.dart';
import 'package:control_precios_tienda2022/widgets/widgets.dart';
import 'package:control_precios_tienda2022/screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('TIENDA HILDA MAURICIO'),
        // backgroundColor: Colors.transparent,
      ),
      drawer: const DrawerHomeScreen(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CardWidget(categories: productsProvider.onDisplayProducts),
          ],
        ),
      ),
    );
  }
}
