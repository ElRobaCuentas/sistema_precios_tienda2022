// import 'package:control_precios_tienda2022/main.dart';
import 'package:control_precios_tienda2022/screens/categories_screen.dart';
import 'package:control_precios_tienda2022/screens/products_screen.dart';
import 'package:control_precios_tienda2022/screens/screens.dart';
import 'package:control_precios_tienda2022/screens/subcategories_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = '/category';

  static Map<String, Widget Function(BuildContext)> routes = {
    // Principal
    'home': (context) => const HomeScreen(),

    // Otros
    '/category': (context) => const CategoriesScreen(),
    '/subcategory': (context) => const SubcategoriesScreen(),
    '/product': (context) => const ProductsScreen(),

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
