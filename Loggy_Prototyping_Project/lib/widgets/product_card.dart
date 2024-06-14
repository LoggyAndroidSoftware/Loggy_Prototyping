import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String code;
  final int quantity;

  const ProductCard({super.key, required this.name, required this.code, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text('Código: $code - Cantidad: $quantity'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}