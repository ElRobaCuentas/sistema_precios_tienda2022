import 'package:control_precios_tienda2022/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control de Precios 2022',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.indigo,
        appBarTheme: const AppBarTheme(
          color: Colors.indigo,
          elevation: 0,
        ),
      ),
    );
  }
}
