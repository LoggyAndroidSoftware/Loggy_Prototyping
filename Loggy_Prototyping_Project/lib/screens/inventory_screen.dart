import 'package:flutter/material.dart';
import 'package:loggy_prototyping_project/screens/add_product_screen.dart';

import '../widgets/product_card.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Inventario'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'Inventario',
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
                  hintText: 'Ingrese el nombre del producto',
                  prefixIcon: Icon(Icons.search),
                ),
              ),

              const SizedBox(height: 20,),
              //crear una lista de 5 productos con el widget productt card con productos derivados del petroleo

              ListView(
                shrinkWrap: true,
                children: const [
                  ProductCard(
                    name: 'Aceite de motor',
                    code: '2916',
                    quantity: 10,
                  ),
                  ProductCard(
                    name: 'Filtro de aire',
                    code: '2917',
                    quantity: 20,
                  ),
                  ProductCard(
                    name: 'Aceite Vistony',
                    code: '2918',
                    quantity: 30,
                  ),
                  ProductCard(
                    name: 'Aceite de transmisión',
                    code: '2919',
                    quantity: 40,
                  ),
                  ProductCard(
                    name: 'Líquido de frenos',
                    code: '2920',
                    quantity: 50,
                  ),


                ],

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
              builder: (context) => const AddProductScreen(),
            ),
          );


        },
        child: const Icon(Icons.add),
      )
    );
  }
}

