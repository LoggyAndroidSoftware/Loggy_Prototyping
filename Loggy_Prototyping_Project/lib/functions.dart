import 'package:flutter/material.dart';
import 'package:loggy_prototyping_project/inventory.dart';

class functions extends StatelessWidget {

  final String lineName;

  const functions({super.key, required this.lineName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    builder: (context) => const inventory(),
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
