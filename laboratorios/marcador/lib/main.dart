import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MarcadorDeportivo()));
}

class MarcadorDeportivo extends StatefulWidget {
  const MarcadorDeportivo({super.key});

  @override
  State<MarcadorDeportivo> createState() => _MarcadorDeportivoState();
}

class _MarcadorDeportivoState extends State<MarcadorDeportivo> {
  int puntosA = 0;
  int puntosB = 0;

  @override
  Widget build(BuildContext context) {
    String mensaje = "Empate";
    Color colorA = Colors.grey;
    Color colorB = Colors.grey;

    if (puntosA > puntosB) {
      mensaje = "Va ganando Equipo A";
      colorA = Colors.green;
    } else if (puntosB > puntosA) {
      mensaje = "Va ganando Equipo B";
      colorB = Colors.green;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Marcador Deportivo')),
      body: Column(
        children: [
          Text(mensaje, style: const TextStyle(fontSize: 25)),
          Row(
            children: [
              // EQUIPO A (hecho a la fuerza bruta, sin diseño extra)
              Expanded(
                child: Container(
                  color: colorA,
                  child: Column(
                    children: [
                      const Text("Equipo A", style: TextStyle(fontSize: 20)),
                      Text(puntosA.toString(), style: const TextStyle(fontSize: 40)),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (puntosA > 0) puntosA--;
                              });
                            },
                            child: const Text("-1"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                puntosA++;
                              });
                            },
                            child: const Text("+1"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // EQUIPO B (código repetido exactamente igual, como un principiante)
              Expanded(
                child: Container(
                  color: colorB,
                  child: Column(
                    children: [
                      const Text("Equipo B", style: TextStyle(fontSize: 20)),
                      Text(puntosB.toString(), style: const TextStyle(fontSize: 40)),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (puntosB > 0) puntosB--;
                              });
                            },
                            child: const Text("-1"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                puntosB++;
                              });
                            },
                            child: const Text("+1"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                puntosA = 0;
                puntosB = 0;
              });
            },
            child: const Text("Reiniciar"),
          ),
        ],
      ),
    );
  }
}