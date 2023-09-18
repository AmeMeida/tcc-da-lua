import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  int numero;
  Contador({super.key, this.numero = 0});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () => setState(() {
                  widget.numero++;
                }),
            child: const Text("+")),
        Text(widget.numero.toString())
      ],
    );
  }
}
