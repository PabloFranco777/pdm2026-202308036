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
  int puntosXela = 0;
  int puntosQuicheFc = 0;

  @override
  Widget build(BuildContext context) {
    String mensaje = "Empate";
    Color colorA = Colors.grey;
    Color colorB = Colors.grey;

    if (puntosXela > puntosQuicheFc) {
      mensaje = "Va ganando Xela";
      colorA = Colors.green;
    } else if (puntosQuicheFc > puntosXela) {
      mensaje = "Va ganando Quiche FC";
      colorB = Colors.green;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Marcador Deportivo')),
      body: Column(
        children: [
          Text(mensaje, style: const TextStyle(fontSize: 25)),
          Row(
            children: [

              Expanded(
                child: Container(
                  color: colorA,
                  child: Column(
                    children: [
                      const Text("Xela", style: TextStyle(fontSize: 20)),
                      Text(puntosXela.toString(), style: const TextStyle(fontSize: 40)),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (puntosXela > 0) puntosXela--;
                              });
                            },
                            child: const Text("-1"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                puntosXela++;
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


              Expanded(
                child: Container(
                  color: colorB,
                  child: Column(
                    children: [
                      const Text("Quiche FC", style: TextStyle(fontSize: 20)),
                      Text(puntosQuicheFc.toString(), style: const TextStyle(fontSize: 40)),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (puntosQuicheFc > 0) puntosQuicheFc--;
                              });
                            },
                            child: const Text("-1"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                puntosQuicheFc++;
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
                puntosXela = 0;
                puntosQuicheFc = 0;
              });
            },
            child: const Text("Reiniciar"),
          ),
        ],
      ),
    );
  }
}