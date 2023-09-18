import 'package:flutter/material.dart';
import 'package:tccmobile/controller/pessoa_control.dart';
import 'package:tccmobile/model/pessoa.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final nomeController = TextEditingController();
  final raController = TextEditingController();
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        children: [
          TextFormField(
            controller: nomeController,
            decoration: const InputDecoration(labelText: "Nome"),
          ),
          TextFormField(
            controller: raController,
            decoration: const InputDecoration(labelText: "RA"),
          ),
          TextButton(
              onPressed: () {
                if (key.currentState!.validate()) {
                  final nome = nomeController.text;
                  final ra = int.parse(raController.text);

                  final pessoa = Pessoa(nome, ra, "");
                  pessoaControl.adicionar(pessoa);
                }
              },
              child: const Text("Enviar")),
          TextButton(
              onPressed: () {
                pessoaControl.printarPessoas();
              },
              child: const Text("Printar pessoas"))
        ],
      ),
    );
  }
}
