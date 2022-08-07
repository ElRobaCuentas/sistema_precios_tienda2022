import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:control_precios_tienda2022/models/models.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  Future<List<dynamic>> _getProducts() async {
    final response = await http
        .get(Uri.parse("https://tutienda360.herokuapp.com/tienda/productos"));

    List<dynamic> products = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData) {
        products.add(Products(item["name"], item["value"].toString()));
      }

      return products;
    } else {
      throw Exception('Algo salió mal');
    }
  }

  @override
  void initState() {
    super.initState();
    _getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dulces')),
      body: FutureBuilder(
        future: _getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: _listProducts(snapshot.data),
            );
          } else if (snapshot.hasError) {
            return const Text('TUDU MAL');
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  List<Widget> _listProducts(data) {
    List<Widget> products = [];

    for (var product in data) {
      products.add(Card(
        child: InkWell(
            onTap: (() {
              Navigator.pushNamed(context, '/favoritos');
            }),
            splashColor: Colors.grey[200],
            child: ListTile(
              title: Text(product.name),
              subtitle: Text('Precio S/' + product.value.toString()),
              trailing: const Icon(Icons.heart_broken_sharp),
            )),
      ));
    }

    return products;
  }
}
