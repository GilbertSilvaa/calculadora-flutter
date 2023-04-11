import 'package:flutter/material.dart';

import 'components/button.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  late final TextEditingController _calculadoraController;

  @override
  void initState() {
    _calculadoraController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _calculadoraController.dispose();
    super.dispose();
  }

  final List<List<String>> _teclado = [
    ['c', 'del', '.', '/'],
    ['7', '8', '9', '*'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '+'],
    ['0', '='],
  ];

  void _digitar(String texto) {
    setState(() {
      _calculadoraController.text += texto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                textAlign: TextAlign.right,
                controller: _calculadoraController,
                readOnly: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.08,
              ),
              ..._teclado
                  .map((linha) => Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: linha
                                  .map((tecla) => Button(
                                        texto: tecla,
                                        onClick: () {
                                          _digitar(tecla);
                                        },
                                      ))
                                  .toList()),
                          const SizedBox(height: 10)
                        ],
                      ))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
