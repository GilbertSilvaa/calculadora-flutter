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

  final List<String> operacoesTeclas = ['+', '-', '*', '/'];
  final List<String> clearTeclas = ['del', 'c'];

  bool _validarEntrada(String tecla) {
    String ultimoCaracter;
    if (_calculadoraController.text.isEmpty) {
      ultimoCaracter = "";
    } else {
      ultimoCaracter =
          _calculadoraController.text[_calculadoraController.text.length - 1];
    }

    if ((ultimoCaracter == '.' && tecla == '.') ||
        (operacoesTeclas.contains(ultimoCaracter) && tecla == '.') ||
        (operacoesTeclas.contains(tecla) &&
            _calculadoraController.text.isEmpty) ||
        (_calculadoraController.text.isEmpty && tecla == '.')) {
      return false;
    }

    if (operacoesTeclas.contains(ultimoCaracter) &&
        operacoesTeclas.contains(tecla)) return false;

    return true;
  }

  void _digitar(String texto) {
    if (!_validarEntrada(texto)) return;

    switch (texto) {
      case 'del':
        if (_calculadoraController.text.isNotEmpty) {
          _calculadoraController.text = _calculadoraController.text
              .substring(0, _calculadoraController.text.length - 1);
        }
        break;
      case 'c':
        _calculadoraController.text = "";
        break;
    }

    if (clearTeclas.contains(texto)) return;

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
