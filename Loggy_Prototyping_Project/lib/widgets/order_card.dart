import 'package:flutter/material.dart';

import '../screens/order_detail_screen.dart';

class OrderCard extends StatelessWidget {
  final String title;
  final String deliveryDate;
  final String status;

  const OrderCard({Key? key, required this.title, required this.deliveryDate, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('Fecha de entrega: $deliveryDate                        Estado: $status'),
        trailing: const Icon(Icons.arrow_forward_ios),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OrderDetailScreen(),
            ),
          );
        },

      ),
    );
  }
}