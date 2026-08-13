import 'package:flutter/material.dart';

void main() {
  runApp(const ParcialApp());
}

const kLima = Color(0xFFC8F54E);

class ParcialApp extends StatelessWidget {
  const ParcialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neobank Pantalla 2',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const PantallaAgregarDinero(),
    );
  }
}

class PantallaAgregarDinero extends StatelessWidget {
  const PantallaAgregarDinero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
        title: const Text(
          'Add money',
          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            const Text(
              'Select card',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tarjetaBancaria(
                    colorFondo: kLima,
                    colorTexto: Colors.black,
                    tipoTarjeta: 'Debit Card',
                    numero: '**** 4568',
                    icono: Icons.credit_card,
                    isLima: true,
                  ),
                  const SizedBox(width: 12),
                  tarjetaBancaria(
                    colorFondo: Colors.black,
                    colorTexto: Colors.white,
                    tipoTarjeta: 'Credit Card',
                    numero: '**** 2478',
                    icono: Icons.credit_card,
                  ),
                  const SizedBox(width: 12),
                  tarjetaBancaria(
                    colorFondo: Colors.black,
                    colorTexto: Colors.white,
                    tipoTarjeta: 'Credit Card',
                    numero: '**** 8890',
                    icono: Icons.credit_card,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Add money to Neobank',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 10),
            opcionMetodo(
              icono: Icons.sync, 
              titulo: 'Move your direct deposit',
            ),
            opcionMetodo(
              icono: Icons.swap_horiz, 
              titulo: 'Transfer from other banks',
            ),
            opcionMetodo(
              icono: Icons.apple, 
              titulo: 'Apple Pay',
            ),
            opcionMetodo(
              icono: Icons.credit_card, 
              titulo: 'Debit / Credit Card',
            ),
          ],
        ),
      ),
    );
  }
}

Widget tarjetaBancaria({
  required Color colorFondo, 
  required Color colorTexto, 
  required String tipoTarjeta, 
  required String numero,
  required IconData icono,
  bool isLima = false,
}) {
  return Container(
    width: 150,
    height: 100,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: colorFondo,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Icon(icono, color: colorTexto, size: 20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tipoTarjeta, style: TextStyle(color: isLima ? Colors.black87 : Colors.grey[300], fontSize: 11)),            const SizedBox(height: 2),
            Text(numero, style: TextStyle(color: colorTexto, fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
  );
}

Widget opcionMetodo({required IconData icono, required String titulo}) {
  return ListTile(
    leading: Icon(icono, color: Colors.black54, size: 26),
    title: Text(
      titulo, 
      style: const TextStyle(fontSize: 15, color: Colors.black87),
    ),
    trailing: const Icon(Icons.chevron_right, color: Colors.grey),
    onTap: () {},
  );
}