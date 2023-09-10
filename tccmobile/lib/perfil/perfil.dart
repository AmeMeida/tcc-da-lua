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
        title: Text(""),
        backgroundColor: Cores.azulFundo,
      ),
      backgroundColor: Cores.azulFundo,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/foto-perfil.jpg"),
                    radius: 80,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Cores.azulLogo,
                        shape: BoxShape.circle
                      ),
                      child: IconButton(
                        icon: Icon(Icons.photo_camera),
                        color: Cores.branco,
                        iconSize: 20,
                        onPressed: (){},
                      ),
                    )
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}