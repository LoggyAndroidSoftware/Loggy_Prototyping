import 'package:flutter/material.dart';
import 'package:loggy_prototyping_project/screens/add_order_screen.dart';
import 'package:loggy_prototyping_project/widgets/order_card.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Órdenes'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                children: [
                  const Text(
                    'Lista de Órdenes',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20,),

                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Buscar',
                      hintText: 'Ingrese el numero de orden',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  //crear una lista de 5 productos con el widget productt card con productos derivados del petroleo

                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: const [
                        //6 OrderCard
                        OrderCard(title: 'Orden N 129', deliveryDate: '12/12/2022', status: 'Recibido',),
                        OrderCard(title: 'Orden N 130', deliveryDate: '12/12/2022', status: 'En proceso',),
                        OrderCard(title: 'Orden N 131', deliveryDate: '12/12/2022', status: 'En proceso',),
                        OrderCard(title: 'Orden N 132', deliveryDate: '12/12/2022', status: 'En proceso',),
                        OrderCard(title: 'Orden N 133', deliveryDate: '12/12/2022', status: 'Completado',),
                        OrderCard(title: 'Orden N 134', deliveryDate: '12/12/2022', status: 'Completado',),

                      ],

                    ),
                  ),

                ]
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddOrderScreen(),
              ),
            );


          },
          child: const Icon(Icons.add),
        )
    );
  }
}
