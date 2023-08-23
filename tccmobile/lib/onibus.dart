import 'package:flutter/material.dart';

class Onibus extends StatefulWidget {
  const Onibus({super.key});

  @override
  State<Onibus> createState() => _OnibusState();
}

class _OnibusState extends State<Onibus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onibus"),
      ),
      body: Center(
        child: Text("Onibus"),
      ),
    );
  }
}