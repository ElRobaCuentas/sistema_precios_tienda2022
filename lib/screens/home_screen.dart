import 'package:control_precios_tienda2022/cards_widgets/card_widget.dart';
import 'package:control_precios_tienda2022/screens/drawer_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: const DrawerHomeScreen(),
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 25,
            ),
            Text(
              'CONTROL DE PRECIOS',
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
            CardWidget(),
          ],
        ),
      ),
    );
  }
}
