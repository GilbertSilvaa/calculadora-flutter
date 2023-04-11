import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.texto, required this.onClick});

  final String texto;
  final Function onClick;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    if (widget.texto == '0') {
      return TextButton(
        onPressed: () {
          widget.onClick();
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.red[100],
          side: const BorderSide(width: 1.0, color: Colors.red),
          fixedSize: Size(MediaQuery.of(context).size.width * 0.67, 60),
        ),
        child: Text(widget.texto),
      );
    }

    return TextButton(
      onPressed: () {
        widget.onClick();
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.red[100],
        side: const BorderSide(width: 1.0, color: Colors.red),
        fixedSize: Size(MediaQuery.of(context).size.width * 0.2, 60),
      ),
      child: Text(widget.texto),
    );
  }
}
