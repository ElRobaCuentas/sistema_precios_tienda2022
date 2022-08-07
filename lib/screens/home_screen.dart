import 'package:control_precios_tienda2022/screens/menu_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME SCREEN'),
        // backgroundColor: Colors.transparent,
      ),
      drawer: const DrawerHomeScreen(),
      body: const Center(
        child: Text("home screen"),
      ),
    );
  }
}
