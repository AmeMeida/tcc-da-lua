import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Variaveis{
  static Color corAzul = Color.fromARGB(255, 9, 102, 136);
  static Color corAzul2 = Color.fromARGB(255, 71, 122, 143);
  static Color corBg = Color.fromARGB(255, 196, 203, 202);
  static Color corBranca = Colors.white;
  static Color corPreta = Colors.black;
  static Color corFonte = Colors.white;
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Color corAzul = Color.fromARGB(255, 9, 102, 136);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AccessCity',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      routes: {
        /*'/':(context) => Login(),
        '/onibus':(context) => Onibus(),
        '/lugar':(context) => Lugar(),
        '/perfil': (context) => Perfil(),
        '/configuracoes': (context) => Configuracao(),
        '/documentos': (context) => Documentos()*/
      }
    );
  }
}