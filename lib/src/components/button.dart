import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.texto, required this.onClick});

  final String texto;
  final Function onClick;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  final List<String> teclasEspeciais = ['+', '-', '*', '/', 'del', 'c', '='];

  @override
  Widget build(BuildContext context) {
    if (widget.texto == '0') {
      return TextButton(
        onPressed: () {
          widget.onClick();
        },
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue[200],
            fixedSize: Size(MediaQuery.of(context).size.width * 0.67, 60),
            textStyle: const TextStyle(fontSize: 20)),
        child: Text(
          widget.texto,
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500),
        ),
      );
    }

    if (teclasEspeciais.contains(widget.texto)) {
      return TextButton(
        onPressed: () {
          widget.onClick();
        },
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue[500],
            fixedSize: Size(MediaQuery.of(context).size.width * 0.2, 60),
            textStyle: const TextStyle(fontSize: 20)),
        child: Text(
          widget.texto,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      );
    }

    return TextButton(
      onPressed: () {
        widget.onClick();
      },
      style: TextButton.styleFrom(
          backgroundColor: Colors.blue[200],
          fixedSize: Size(MediaQuery.of(context).size.width * 0.2, 60),
          textStyle: const TextStyle(fontSize: 20)),
      child: Text(
        widget.texto,
        style:
            const TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
      ),
    );
  }
}
