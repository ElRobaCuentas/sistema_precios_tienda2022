import 'package:flutter/material.dart';

class DrawerHomeScreen extends StatelessWidget {
  const DrawerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, bottom: 20),
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFAMbow0ONmvIYeUB3s11PkvpbOaZVsNBqKtt53uXwDfjG_vwX-cl1H9WWtQ3kOhNUYlU&usqp=CAU'),
                ),
                shape: BoxShape.circle),
          ),
          const Text(
            'Usuario',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
          ),
          TextButton(
            onPressed: (() {}),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: const Text('Configuracion'),
            ),
          ),
          TextButton(
            onPressed: (() {}),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: const Text('Favoritos'),
            ),
          ),
          TextButton(
            onPressed: (() {}),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: const Text('Cerrar Sesión'),
            ),
          ),
        ],
      ),
    );
  }
}
