import 'package:flutter/material.dart';
import 'package:tccmobile/components/form_pessoa.dart';

class FormPagina extends StatelessWidget {
  const FormPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: FormLogin(),
      ),
    );
  }
}
