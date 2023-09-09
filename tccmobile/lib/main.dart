// ignore_for_file: non_constant_identifier_names, prefer_final_fields, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:tccmobile/config/config.dart';
import 'package:tccmobile/doc/docs.dart';
import 'package:tccmobile/login.dart';
import 'package:tccmobile/lugar.dart';
import 'package:tccmobile/onibus.dart';
import 'package:tccmobile/perfil/perfil.dart';
import 'package:tccmobile/cadastro.dart';

void main() {
  runApp(MyApp());
}

class Cores{
  static Color azul = Color.fromARGB(255, 82, 109, 130);
  static Color azulLogo = Color.fromARGB(255, 101, 121, 155);
  static Color azulFundo = Color.fromARGB(255, 211, 224, 234);
  static Color vermelho = Color.fromARGB(255, 226, 62, 87);
  static Color brancoCerto = Color.fromARGB(255, 196, 203, 202);
  static Color branco = Colors.white;
  static Color cinza = Color.fromARGB(255, 129, 132, 134);
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
        '/onibus':(context) => Onibus(),
        '/lugar':(context) => Lugar(),
        '/perfil': (context) => Perfil(),
        '/configuracoes': (context) => Config(),
        '/documentos': (context) => Docs(),
        '/cadastro':(context) => Cadastro(),
      }
    );
  }
}