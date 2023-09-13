// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:masked_text/masked_text.dart';
import 'package:tccmobile/controller/user_control.dart';
import 'package:tccmobile/main.dart';
import 'package:tccmobile/model/usuario.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

  DateFormat formatoData = DateFormat('dd/MM/yyyy');
  final String dataFormatada = formatoData.format(userControl.loggedUser!.nascimento);

class _PerfilState extends State<Perfil> {
  //VARIAVEIS
  TextEditingController _campoNome = TextEditingController(text: userControl.loggedUser!.nome);
  TextEditingController _campoNasc = TextEditingController(text: dataFormatada);
  TextEditingController _campoEmail = TextEditingController(text: userControl.loggedUser!.email);
  TextEditingController _campoCel = TextEditingController(text: userControl.loggedUser!.telefone);
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

  Icon mudaIcon() {
    if (enabled == true) {
      return Icon(
        Icons.save,
        color: Cores.branco,
        size: 25,
      );
    } else {
      return Icon(
        Icons.edit,
        color: Cores.branco,
        size: 25,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    auditiva = userControl.loggedUser!.hasDeficiencia(Deficiencia.auditiva);
    visual = userControl.loggedUser!.hasDeficiencia(Deficiencia.visual);
    motora =  userControl.loggedUser!.hasDeficiencia(Deficiencia.motora);
    outra =  userControl.loggedUser!.hasDeficiencia(Deficiencia.outra);

    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
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
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/foto-perfil.jpg"),
                      radius: 80,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Cores.azulLogo, shape: BoxShape.circle),
                        child: IconButton(
                          icon: const Icon(Icons.photo_camera),
                          color: Cores.branco,
                          iconSize: 20,
                          onPressed: () {},
                        ),
                      ))
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
                          mask: '(##) #####-####',
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
                          mask: "##/##/####",
                          decoration: InputDecoration(
                            labelText: "Data de Nascimento",
                            prefixIcon: const Icon(Icons.calendar_today),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Deficiências:",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Cores.azul,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IgnorePointer(
                          ignoring: !enabled,
                          child: Opacity(
                            opacity: enabled ? 1 : 0.5,
                            child: Column(
                              children: [
                                //Auditiva
                                Row(children: [
                                  Checkbox(
                                    value: auditiva,
                                    onChanged: (value) {
                                      userControl.loggedUser!.toggleDeficiencia(Deficiencia.auditiva);
                                      
                                      setState(() {
                                        auditiva = value ?? false;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "Auditiva",
                                    style: TextStyle(
                                        fontSize: 12, fontFamily: "Comfortaa"),
                                  ),
                                ]),
                                //Visual
                                Row(children: [
                                  Checkbox(
                                    value: visual,
                                    onChanged: (value) {
                                      userControl.loggedUser!.toggleDeficiencia(Deficiencia.visual);
                                      
                                      setState(() {
                                        visual = value ?? false;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "Visual",
                                    style: TextStyle(
                                        fontSize: 12, fontFamily: "Comfortaa"),
                                  ),
                                ]),
                                //Motora
                                Row(children: [
                                  Checkbox(
                                    value: motora,
                                    onChanged: (value) {
                                      userControl.loggedUser!.toggleDeficiencia(Deficiencia.motora);
                                      
                                      setState(() {
                                        motora = value ?? false;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "Motora",
                                    style: TextStyle(
                                        fontSize: 12, fontFamily: "Comfortaa"),
                                  ),
                                ]),
                                //Outra
                                Row(children: [
                                  Checkbox(
                                    value: outra,
                                    onChanged: (value) {
                                      userControl.loggedUser!.toggleDeficiencia(Deficiencia.outra);
                                      
                                      setState(() {
                                        outra = value ?? false;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "Outra",
                                    style: TextStyle(
                                        fontSize: 12, fontFamily: "Comfortaa"),
                                  ),
                                ])
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          backgroundColor: Cores.vermelho,
          child: mudaIcon(),
          onPressed: () => setState(Alterar),
        )
      ]),
    );
  }
}
