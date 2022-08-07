import 'package:control_precios_tienda2022/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsProvider extends ChangeNotifier {
  final String _baseUrl = 'tutienda360.herokuapp.com';

  List<Category> onDisplayProducts = [];

  ProductsProvider() {
    getOnDisplayProducts();
  }

  getOnDisplayProducts() async {
    var url = Uri.https(_baseUrl, 'tienda/productos_json');

    final response = await http.get(url);
    final producstResponse = Tienda.fromJson(response.body);
    // final Map<String, dynamic> decodedData = json.decode(response.body)[0];
    onDisplayProducts = producstResponse.result;
    notifyListeners(); // ESCUCHA SI HAY CAMBIOS PARA QUE REDIBUJE EL WIDGET
  }
}
