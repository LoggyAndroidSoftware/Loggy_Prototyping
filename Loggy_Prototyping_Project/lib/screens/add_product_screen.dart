import 'package:flutter/material.dart';
// datos del product
// final String name;
// final String code;
// final int quantity;
// final double weight;
// final DateTime date;

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Producto'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              'Producto',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Guardar'),
            ),


          ],
        ),
      ),
    );
  }
}
