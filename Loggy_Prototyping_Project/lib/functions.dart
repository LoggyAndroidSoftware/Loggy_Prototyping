import 'package:flutter/material.dart';
import 'package:loggy_prototyping_project/screens/inventory_screen.dart';

class functions extends StatelessWidget {

  final String lineName;

  const functions({super.key, required this.lineName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Funciones'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InventoryScreen(),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/inventory.png',
                    height: 150,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    lineName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
