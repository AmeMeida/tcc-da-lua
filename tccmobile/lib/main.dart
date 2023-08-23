import 'package:flutter/material.dart';
import 'package:tccmobile/login.dart';

void main() {
  runApp(MyApp());
}

class Cores{
  static Color azulLogo = Color.fromARGB(1, 101, 121, 155);
  static Color azulFundo = Color.fromARGB(1, 211, 224, 234);
  static Color vermelho = Color.fromARGB(1, 226, 62, 87);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AccessCity',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(context) => Login(),
        /*'/onibus':(context) => Onibus(),
        '/lugar':(context) => Lugar(),
        '/perfil': (context) => Perfil(),
        '/configuracoes': (context) => Configuracao(),
        '/documentos': (context) => Documentos()*/
      }
    );
  }
}