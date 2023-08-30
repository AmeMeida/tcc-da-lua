import 'package:flutter/material.dart';

import '../main.dart';

class Config extends StatefulWidget {
  const Config({super.key});

  @override
  State<Config> createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Configurações", style: TextStyle(fontSize: 20))
              ]
            ) 
          )
        ]
      ),
      backgroundColor: Cores.azulFundo,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                height: 100,
                width: 450,
                alignment: Alignment.center,
                child: Text("oioioioi"),
              ),
            ],
          ),
        ),
      )
    );
  }
}