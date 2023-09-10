import 'package:flutter/material.dart';
import 'package:masked_text/masked_text.dart';
import 'package:tccmobile/main.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  //VARIAVEIS
  TextEditingController _campoNome = TextEditingController();
  TextEditingController _campoNasc = TextEditingController();
  TextEditingController _campoEmail = TextEditingController();
  TextEditingController _campoCel = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool enabled = false;
  bool auditiva = false;
  bool visual = false;
  bool motora = false;
  bool outra = false;

  //METODOS
  void Alterar() {
    enabled = !enabled;
  }

  void Cancelar() {
    enabled = !enabled;
    _campoNome.clear();
    _campoNasc.clear();
    _campoEmail.clear();
    _campoCel.clear();
  }

  void Salvar() {
    print("salvou");
  }

  Icon mudaIcon(){
  if(enabled == true){
    return Icon(Icons.save, color: Cores.branco, size: 25,);
  }else{
    return Icon(Icons.edit, color: Cores.branco, size: 25,);
  }
}

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
                        enabled: enabled,
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
                        enabled: enabled,
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
                        enabled: enabled,
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
                        enabled: enabled,
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
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Cores.vermelho,
            child: mudaIcon(),
            onPressed: () => setState(Alterar),
          )
        ]
      ),
    );
  }
}