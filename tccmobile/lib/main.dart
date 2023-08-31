// ignore_for_file: non_constant_identifier_names, prefer_final_fields, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:tccmobile/login.dart';

void main() {
  runApp(MyApp());
}

class Cores{
  static Color azul = Color.fromARGB(255, 82, 109, 130);
  static Color azulLogo = Color.fromARGB(255, 101, 121, 155);
  static Color azulFundo = Color.fromARGB(255, 211, 224, 234);
  static Color vermelho = Color.fromARGB(255, 226, 62, 87);
  //LUA POR FAVOR ESCOLHA O BRANCO CERTO
  static Color branco = Colors.white;
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