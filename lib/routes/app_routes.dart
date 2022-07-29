import 'package:control_precios_tienda2022/mains.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    '/dulces': (context) => const DulcesScreen(),
    '/bebidas': (context) => const BebidasScreen(),
    '/abarrotes': (context) => const AbarrotesScreen(),
    '/limpieza': (context) => const LimpiezaScreen(),
    '/otros': (context) => const OtrosScreen(),
  };
}
