import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('')
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Orden N 1083',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          Center(

            child:
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const SizedBox(height: 50),
                    Image.asset(
                      'assets/images/lineProd1.png',
                      height: 150,
                    ),

                    const SizedBox(height: 50),
                    //texto con icono
                    Text('Muestra para laboratorio'),

                    const SizedBox(height: 10),
                    Text('Muestra Final'),

                    const SizedBox(height: 10),
                    Text('Montacargas'),

                    const SizedBox(height: 10),
                    Text('Muestra para laboratorio'),

                    const SizedBox(height: 40),
                    const Text('Cantidad de Productos', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                    const Text('50/100', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),

                    const SizedBox(height: 40),
                    const Text('Realizado por: ', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                    const Text('Sanchez Alfaro, Diego', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                    const Text('78729', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),

                  ],
                ),
              )


          ),
        ],
      ),
    );
  }
}
