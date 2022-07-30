import 'package:control_precios_tienda2022/mains.dart';
import 'package:control_precios_tienda2022/screens/products_screen/favoritos.dart';
import 'package:control_precios_tienda2022/screens/specific_products_screen/specific_chocolates.dart';
import 'package:control_precios_tienda2022/screens/specific_products_screen/specific_galletas.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    // Principal
    'home': (context) => const HomeScreen(),

    // Pantalla de Procutos
    '/dulces': (context) => const DulcesScreen(),
    '/bebidas': (context) => const BebidasScreen(),
    '/abarrotes': (context) => const AbarrotesScreen(),
    '/limpieza': (context) => const LimpiezaScreen(),
    '/otros': (context) => const OtrosScreen(),

    // Pantalla de los productos favoritos

    '/favoritos': (context) => const FavoritosScreen(),

    // Pantalla de Procutos Especificos con boton de favoritos

    '/specificDulces': (context) => const SpecificDulcesScreen(),
    '/specificGalletas': (context) => const SpecificGalletasScreen(),
    '/specificChocolates': (context) => const SpecificChocolatesScreen()
  };
}
