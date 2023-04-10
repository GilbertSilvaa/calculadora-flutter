import 'package:flutter/material.dart';

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
                controller: _calculadoraController,
                readOnly: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      side: const BorderSide(width: 1.0, color: Colors.red),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.20, 60),
                    ),
                    child: const Text('+'),
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
