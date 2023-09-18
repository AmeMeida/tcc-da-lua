import 'package:flutter/material.dart';
import 'package:tccmobile/main.dart';

class Pesquisa extends StatelessWidget {
  const Pesquisa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AccessCity',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Cores.azul,
          title: TextFormField(
                decoration: InputDecoration(
                  hintText: "Pesquisar...",
                  hintStyle: TextStyle(
                    color: Cores.brancoCerto,
                  ),
                  suffixIcon: Icon(Icons.search, color: Cores.brancoCerto,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Cores.branco, width: 2.0)
                  ),
                  
                ),
              ),
          
          actions: [
          ],
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Navigator.pushNamed(context, '/lugar');
              },
            ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Cores.azulFundo,
          ),
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sugestões",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              ListTile(
                leading: Icon(Icons.forest),
                title: Text("Parque Cidade Limeira",),
                onTap: () {
                  Navigator.pushNamed(context, '/lugar');
                },
              ),

              ListTile(
                leading: Icon(Icons.restaurant_menu),
                title: Text("Augusta S Restaurante", ),
                onTap: () {
                  Navigator.pushNamed(context, '/lugar');
                },
              ),

              ListTile(
                leading: Icon(Icons.nightlife),
                title: Text("Neverland Lounge Music Bar"),
                onTap: () {
                  Navigator.pushNamed(context, '/lugar');
                },
              ),

              ListTile(
                leading: Icon(Icons.local_pharmacy),
                title: Text("Farmácia Drogal"),
                onTap: () {
                  Navigator.pushNamed(context, '/lugar');
                },
              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Enxuto Supermercados"),
                onTap: () {
                  Navigator.pushNamed(context, '/lugar');
                },
              ),

              ListTile(
                leading: Icon(Icons.tag_rounded),
                title: Text("Pátio Limeira Shopping"),
                onTap: () {
                  Navigator.pushNamed(context, '/lugar');
                },
              ),
              
              Text("Mostrar mais...", 
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              )
            ],

            
          ),
        )
      ),
    );
  }
}