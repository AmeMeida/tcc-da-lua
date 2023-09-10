import 'package:flutter/material.dart';
import 'package:tccmobile/main.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      backgroundColor: Cores.azulFundo,
      body: Center(
        child: Text("Perfil")
      ),
    );
  }
}