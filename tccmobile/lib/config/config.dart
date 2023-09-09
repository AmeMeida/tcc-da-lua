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
        centerTitle: true,
        title: Text("Configurações", style: TextStyle(fontSize: 18),),
        actions: [
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
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                height: 100,
                width: 360,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8Ea9cyIi_U8y7mgzqX1SitKtppQOzlciXA&usqp=CAU"),
                        radius: 80,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Padding(
                        padding: EdgeInsets.only(left:4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Catarina Fagotti Bonifácio", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                            Text("Sem deficiência", style: TextStyle(fontSize: 13, color: Cores.cinza)),
                            Text("catfagboni@gmail.com", style: TextStyle(fontSize: 13, color: Cores.cinza))
                          ],
                        )
                      ),]
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
            ],
          ),
        ),
      )
    );
  }
}