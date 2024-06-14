import 'package:flutter/material.dart';
import 'package:loggy_prototyping_project/functions.dart';


class ProductionLinesScreen extends StatelessWidget {
  const ProductionLinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Líneas de producción'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Selecciona tu línea de producción donde vas a trabajar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: List.generate(6, (index) {
                  String imageName;
                  String lineName = 'Línea ${index + 1}';
                  if (index % 2 == 0) {
                    imageName = 'assets/images/lineProd1.png';
                  } else {
                    imageName = 'assets/images/lineProd2.png';
                  }
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => functions(lineName: lineName),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          imageName,
                          height: 100,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Línea ${index + 1}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
