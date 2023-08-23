import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tccmobile/model/usuario.dart';
import 'package:tccmobile/onibus.dart';
import 'package:tccmobile/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //AVISO
    void _showDialog(){
      showDialog(
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title: Text("Erro!"),
            content: Text("Usuário ou senha incorretos!"),
            actions: [ 
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Ok")
              )
            ]
          );
        }
      );
    }

    //VARIAVEIS
    String usuarioA = "";
    String senhaA = "";
    TextEditingController _campoUsuario = TextEditingController();
    TextEditingController _campoSenha = TextEditingController();
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    //COMEÇO DO CÓDIGO
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Cores.azulFundo,
        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 64),
            Image.asset("assets/logo-AC.png", width: 200, height: 200),
            const SizedBox(height: 24),
            const Text("Bem vindo de volta!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, 
            color: Colors.blue)),
            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _campoUsuario,
                      validator: (value){
                        if(value!.isEmpty){
                          return("Campo obrigatório!");
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Nome",
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      )
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: _campoSenha,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Senha não pode ser vazio");
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Senha",
                        prefixIcon: const Icon(Icons.fingerprint),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                if (_formKey.currentState!.validate()) {
                  senhaA = _campoSenha.text;
                  usuarioA = _campoUsuario.text;
                  if (users.any((element) =>
                      element.usuario == usuarioA && element.senha == senhaA)) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onibus()));
                  } else {
                    _showDialog();
                  }
                  //metodo verificar na lista do repository
                }
              },
              child: const Text("Log-In", style: TextStyle(color: Colors.white, fontSize: 15, 
              fontWeight: FontWeight.w200),),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize: Size(332, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Não é inscrito? Cadastre-se!", style: TextStyle(fontSize: 15, color: Colors.red))
          ],
        ),
      ),
    )
    );
  }
}