import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.all(30),
        mainAxisSpacing: 20,
        crossAxisCount: 1,
        children: [
          Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/dulces');
              },
              splashColor: Colors.grey[200],
              child: const Center(
                child: Text(
                  'Dulces',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/bebidas');
              },
              splashColor: Colors.grey[200],
              child: const Center(
                child: Text(
                  'Bebidas',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/abarrotes');
              },
              splashColor: Colors.grey[200],
              child: const Center(
                child: Text(
                  'Abarrotes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/limpieza');
              },
              splashColor: Colors.grey[200],
              child: const Center(
                child: Text(
                  'Limpieza',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/otros');
              },
              splashColor: Colors.grey[200],
              child: const Center(
                child: Text(
                  'Otros',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
