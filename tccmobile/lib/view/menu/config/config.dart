import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tccmobile/controller/user_control.dart';
import 'package:tccmobile/model/usuario.dart';
import 'package:tccmobile/view/conta_usuario/login.dart';

import '../../../main.dart';

class Config extends StatefulWidget {
  const Config({super.key});

  @override
  State<Config> createState() => _ConfigState();
}

class VariaveisConf {
  static bool light = false;
}

class _ConfigState extends State<Config> {
  //MODO ESCURO
  void ModoEscuro() {
    if (VariaveisConf.light == false) {
      Color azul = Color.fromARGB(255, 82, 109, 130);
      Color azulLogo = Color.fromARGB(255, 101, 121, 155);
      Color azulFundo = Color.fromARGB(255, 211, 224, 234);
      Color vermelho = Color.fromARGB(255, 226, 62, 87);
      Color brancoCerto = Color.fromARGB(255, 196, 203, 202);
      Color branco = Colors.white;
      Color cinza = Color.fromARGB(255, 129, 132, 134);
    } else {
      Color azul = Color.fromARGB(255, 82, 109, 130);
      Color azulLogo = Color.fromARGB(255, 101, 121, 155);
      Color azulFundo = Color.fromARGB(255, 22, 46, 65);
      Color vermelho = Color.fromARGB(255, 226, 62, 87);
      Color brancoCerto = Color.fromARGB(255, 196, 203, 202);
      Color branco = const Color.fromARGB(255, 138, 134, 134);
      Color cinza = Color.fromARGB(255, 129, 132, 134);
    }
  }

  //AVISO
    void mudarSenha(){
      showDialog(
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title: Text("Configurações"),
            content: Text("Deseja mesmo mudar a senha?"),
            actions: [ 
              CupertinoDialogAction(child: Text("Não")),
              CupertinoDialogAction(child: Text("Sim")),
            ]
          );
        }
      );
    }
    void deletarConta(){
      showDialog(
        context: context,
        builder: (context){
          return const CupertinoAlertDialog(
            title: Text("Configurações"),
            content: Text("Deseja mesmo deletar sua conta?"),
            actions: [ 
              CupertinoDialogAction(child: Text("Não")),
              CupertinoDialogAction(child: Text("Sim")),
            ]
          );
        }
      );
    }

  final bool customIcon = false;
  bool notif = true;

  @override
  Widget build(BuildContext context) {
    if (userControl.loggedUser == null) {
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Configurações", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 16),
          )
        ]
      ),
      backgroundColor: Cores.azulFundo,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                height: 100,
                width: 360,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/foto-perfil.jpg"),
                        radius: 80,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(userControl.loggedUser!.nome, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                              Text(userControl.loggedUser!.deficiencias.isEmpty ? "Sem deficiência" : userControl.loggedUser!.deficiencias.map((e) => deficienciaToString[e]).join(", "), style: TextStyle(fontSize: 13, color: Cores.cinza)),
                              Text(userControl.loggedUser!.email, style: TextStyle(fontSize: 13, color: Cores.cinza))
                            ],
                          )
                        ),
                      ]
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/perfil');
                          },
                          child: Text("Editar", style: TextStyle(color: Cores.vermelho, fontSize: 13, fontWeight: FontWeight.bold),)
                        )
                      )
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: const Text("Segurança", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                        children: [
                          ListTile(
                            title: Text("Mudar a senha", style: TextStyle(fontSize: 13)),
                            leading: Icon(Icons.lock,size: 18),
                            onTap: () => mudarSenha(),
                          ),
                          ListTile(
                            title: Text("Deletar a conta", style: TextStyle(fontSize: 13),),
                            leading: Icon(Icons.delete, size: 18,),
                            onTap: () => deletarConta(),
                          )
                        ],
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: const Text("Notificações", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                        children: [
                          SwitchListTile(
                            title: Text("Permitir notificações?", style: TextStyle(fontSize: 13)),
                            secondary: const Icon(Icons.notifications_active, size: 18),
                            value: notif,
                            onChanged: (bool value){
                              setState(() {
                                notif = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: const Text("Acessibilidade", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                        children: [
                          ListTile(
                            title: Text("Tamanho da fonte", style: TextStyle(fontSize: 13)),
                            leading: const Icon(Icons.format_size, size: 18,),
                          ),
                          SwitchListTile(
                            title: Text("Modo escuro", style: TextStyle(fontSize: 13)),
                            secondary: const Icon(Icons.dark_mode, size: 18,),
                            value: VariaveisConf.light,
                            onChanged: (bool value){
                              setState(() {
                                VariaveisConf.light = !VariaveisConf.light;
                                ModoEscuro();
                              });
                            },
                          ),
                        ],
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}


/*
Container(
                padding: EdgeInsets.all(16),
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                    color: Cores.azul,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 15,),
                      My_Titulo("Minha conta"),
                      SizedBox(height: 15,),
                      My_Text("Alterar minha senha"),
                      //Botao
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Cores.branco,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            print("Mudar senha");
                          },
                          child: Text(
                            'Mudar senha',
                            style: TextStyle(color: Cores.azul, fontSize: VariaveisConf.valorFonte),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      My_Text("Apagar minha conta"),
                      //Botao 2
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Cores.branco,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            print("Apagar conta");
                          },
                          child: Text(
                            'Apagar conta',
                            style: TextStyle(color: Cores.branco, fontSize: VariaveisConf.valorFonte),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                    color: Cores.azul,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      My_Titulo("Notificações"),
                      SizedBox(height: 15,),
                      My_Text("Permitir notificações?"),
                      //Switch
                      Row(
                        children: [
                          Icon(
                            Icons.close,
                            size: 35,
                            color: Cores.branco,
                          ),
                          Switch(
                            value: VariaveisConf.notificacao,
                            activeColor: Cores.branco,
                            inactiveThumbColor: Cores.branco,
                            onChanged: (bool value) {
                              setState(() {
                                VariaveisConf.notificacao =
                                    !VariaveisConf.notificacao;
                                print(VariaveisConf.notificacao);
                              });
                            },
                          ),
                          Icon(
                            Icons.check,
                            size: 35,
                            color: Cores.branco,
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                    ],
                  ),
                ),

                //Aparência
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Cores.branco),
                    color: Cores.branco,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 15,),
                      My_Titulo("Aparência"),
                      SizedBox(height: 15,),
                      My_Text("Tamanho da fonte"),
                      //Barrinha
                      Slider(
                        activeColor: Cores.branco,
                        value: VariaveisConf.valorFonte,
                        min: 0,
                        max: 30,
                        divisions: 15,
                        label: VariaveisConf.valorFonte.toString(),
                        onChanged: (novoValor) {
                          setState(() {
                            if (VariaveisConf.valorFonte <= 30 || VariaveisConf.valorFonte >= 8) {
                              VariaveisConf.valorFonte = novoValor;
                              VariaveisConf.valorFonteT = novoValor + 4;
                            } else if (VariaveisConf.valorFonte > 30){
                              VariaveisConf.valorFonte = 30;
                              VariaveisConf.valorFonteT = 34;
                              print(VariaveisConf.valorFonte);
                            } else if (VariaveisConf.valorFonte <= 8){
                              VariaveisConf.valorFonte = 8;
                              VariaveisConf.valorFonteT = 12;
                              print(VariaveisConf.valorFonte);
                            }
                          });
                        },
                      ),
                      SizedBox(height: 15,),
                      My_Text("Modo escuro"),
                      //Switch
                      Row(
                        children: [
                          Icon(
                            Icons.sunny,
                            color: Cores.branco,
                            size: 35,
                          ),
                          Switch(
                            value: VariaveisConf.light,
                            activeColor: Cores.branco,
                            inactiveThumbColor: Cores.branco,
                            onChanged: (bool value) {
                              setState(() {
                                VariaveisConf.light = !VariaveisConf.light;
                                ModoEscuro();
                              });
                            },
                          ),
                          Icon(
                            Icons.nightlight_round,
                            color: Cores.branco,
                            size: 35,
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                    ],
                  ),
                ),
                  ],
                ),
              )
*/