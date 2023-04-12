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
      List<String> listaValores = _calculadoraController.text
          .split('')
          .where((element) => element != ' ')
          .toList();

      ultimoCaracter = listaValores[listaValores.length - 1];
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

    if (ultimoCaracter == '.' && operacoesTeclas.contains(tecla)) return false;

    String ultimoValor = _calculadoraController.text
        .split(' ')[_calculadoraController.text.split(' ').length - 1];

    if (ultimoValor.split('.').length == 2 && tecla == '.') return false;

    return true;
  }

  void _digitar(String texto) {
    if (!_validarEntrada(texto)) return;

    if (texto == 'del') {
      if (_calculadoraController.text[_calculadoraController.text.length - 1] ==
          ' ') {
        _calculadoraController.text = _calculadoraController.text
            .substring(0, _calculadoraController.text.length - 3);
        return;
      }

      if (_calculadoraController.text.isNotEmpty) {
        _calculadoraController.text = _calculadoraController.text
            .substring(0, _calculadoraController.text.length - 1);
        return;
      }
    }

    if (texto == 'c') {
      _calculadoraController.text = "";
      return;
    }

    if (clearTeclas.contains(texto)) return;

    if (operacoesTeclas.contains(texto)) {
      bool jaTemOperacao = false;

      for (String tecla in _calculadoraController.text.split(' ')) {
        if (operacoesTeclas.contains(tecla)) jaTemOperacao = true;
      }

      if (jaTemOperacao) {
        List<String> expressao = _calculadoraController.text.split(' ');
        double resultado = calcular(double.parse(expressao[0]),
            double.parse(expressao[2]), expressao[1]);

        if (expressao[1] == '/' && expressao[2] == '0') return;

        setState(() {
          _calculadoraController.text = '$resultado';
        });
      }
    }

    if (texto == '=') {
      List<String> expressao = _calculadoraController.text.split(' ');

      if (expressao[1] == '/' && expressao[2] == '0') return;

      double resultado = calcular(
          double.parse(expressao[0]), double.parse(expressao[2]), expressao[1]);

      setState(() {
        _calculadoraController.text = '$resultado';
      });

      return;
    }

    setState(() {
      if (operacoesTeclas.contains(texto)) {
        _calculadoraController.text += " $texto ";
      } else {
        _calculadoraController.text += texto;
      }
    });
  }

  double calcular(double valor1, double valor2, String operacao) {
    double resultado = 0;

    switch (operacao) {
      case '+':
        resultado = valor1 + valor2;
        break;
      case '-':
        resultado = valor1 - valor2;
        break;
      case '*':
        resultado = valor1 * valor2;
        break;
      case '/':
        resultado = valor1 / valor2;
        break;
    }

    return resultado;
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
