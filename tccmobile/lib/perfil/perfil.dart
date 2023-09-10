import 'package:flutter/material.dart';
import 'package:masked_text/masked_text.dart';
import 'package:tccmobile/main.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  //variaveis
  TextEditingController _campoNome = TextEditingController();
  TextEditingController _campoNasc = TextEditingController();
  TextEditingController _campoEmail = TextEditingController();
  TextEditingController _campoCel = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    backgroundColor: Cores.azul,
                    radius: 81,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/foto-perfil.jpg"),
                      radius: 80,
                    ),
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
              SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _campoNome,
                        decoration: InputDecoration(
                          labelText: "Nome completo",
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      MaskedTextField(
                        controller: _campoEmail,
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      MaskedTextField(
                        controller: _campoCel,
                        decoration: InputDecoration(
                          labelText: "Celular",
                          prefixIcon: const Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      MaskedTextField(
                        controller: _campoNasc,
                        decoration: InputDecoration(
                          labelText: "Data de Nascimento",
                          prefixIcon: const Icon(Icons.calendar_today),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}