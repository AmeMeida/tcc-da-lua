import 'package:flutter/material.dart';
import 'package:tccmobile/config/config.dart';
import 'package:tccmobile/main.dart';

class My_Text extends StatelessWidget {
  const My_Text(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(texto,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Cores.branco,
            fontSize: VariaveisConf.valorFonte,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}

class My_Titulo extends StatelessWidget {
  My_Titulo(this.titulo, {super.key});
  final String titulo;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(titulo,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Cores.branco, 
          fontSize: VariaveisConf.valorFonte*1.5, 
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}