import 'package:flutter/material.dart';

class Lugar extends StatefulWidget {
  const Lugar({super.key});

  @override
  State<Lugar> createState() => _LugarState();
}

class _LugarState extends State<Lugar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lugar?"),
      ),
      body: Center(
        child: Text("Lugar?"),
      ),
    );
  }
}