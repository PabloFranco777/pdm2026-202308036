import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Diego',
      home: Scaffold(
        backgroundColor: Colors.white, // Fondo blanco simple
        appBar: AppBar(
          title: const Text('Inventario'),
          backgroundColor: Colors.blueAccent, // Color básico de Flutter
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // El saludo simple
              const Text(
                'Hola, Diego',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Tarjeta Madre ASUS X570',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              
              // Las dos tarjetas hechas de forma muy directa y rústica
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      color: Colors.blue[100], // Azul clarito
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Stock Zona 10', style: TextStyle(fontSize: 12)),
                          SizedBox(height: 5),
                          Text('3 unidades', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16), // Espacio entre los cuadros
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      color: Colors.orange[100], // Naranja clarito
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Estado actual', style: TextStyle(fontSize: 12)),
                          SizedBox(height: 5),
                          Text('Disponible', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}