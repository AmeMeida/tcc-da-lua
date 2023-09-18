import 'package:flutter/material.dart';
import 'package:tccmobile/components/contador.dart';
import 'package:tccmobile/components/texto_drip.dart';

const _textoEstilo = TextStyle(color: Colors.amber);

class ContatosPage extends StatelessWidget {
  const ContatosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("oiii"),
            const DripText("Oiiiiiiiiiiiiiiiiiiiiiiiiii"),
            const DripText("Oiiiiiiiiiiiiiiiiiiiiiiiiii"),
            const DripText("Oiiiiiiiiiiiiiiiiiiiiiiiiii"),
            Contador()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "ABC"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "ABC"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "ABC"),
        ],
      ),
    );
  }
}
