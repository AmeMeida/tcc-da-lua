// ignore_for_file: non_constant_identifier_names, prefer_final_fields, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tccmobile/config/config.dart';
import 'package:tccmobile/doc/docs.dart';
import 'package:tccmobile/model/rota.dart';
import 'package:tccmobile/main.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:tccmobile/perfil/perfil.dart';

class Onibus extends StatefulWidget {
  final String defaultValue;

  const Onibus({super.key, this.defaultValue = " "});

  @override
  State<Onibus> createState() => _OnibusState();
}

class _OnibusState extends State<Onibus> {
  bool _isSwitched = false;
  bool mostraContainer = false; 

  Rota _selectedRota = defaultRota;

  final _mapController = MapController();

  _OnibusState() {
    carregaRotaBd();
  }

  void Pesquisa() {}

  void Carteira() {}

  List<Rota> rotas = [];

  void carregaRotaBd() {
    rotas = mockRotas;
  }

  List<Rota> get _rotas {
    final List<Rota> rotasAux = [defaultRota];
    rotasAux.addAll(rotas);

    return rotasAux;
  }

  void selecionaRota(value) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AccessCity',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              //elevation: 10,
              backgroundColor: Cores.azul,
              actions: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerRight,
                    width: 300,
                    child: DropdownButton<Rota>(
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      value: _selectedRota,
                      items: _rotas
                          .map((rota) => DropdownMenuItem<Rota>(
                              child: Text(rota.rota), value: rota))
                          .toList(),
                      onChanged: (Rota? newValue) {
                        setState(() {
                          _selectedRota = newValue!;
                          int valor = newValue.id; 
                          if(valor != 0){
                            mostraContainer = true; 
                          }else{
                            mostraContainer = false; 
                          }
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
            //Menu
            drawer: Drawer(
              backgroundColor: Colors.white,
              child: ListView(padding: EdgeInsets.zero, children: <Widget>[
                DrawerHeader(
                  child: Row(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/logo-menor.png",
                                width: 64, height: 64),
                          ]),
                      Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Access",
                                    style: TextStyle(
                                        color: Cores.vermelho,
                                        fontSize: 22,
                                        fontFamily: 'Bebas Neue')),
                                Text("City",
                                    style: TextStyle(
                                        color: Cores.vermelho,
                                        fontSize: 22,
                                        fontFamily: 'Bebas Neue'))
                              ])),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Meu Perfil',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Perfil()));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(Icons.wallet),
                    title: Text('Meus documentos',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Docs()));
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Configurações',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Config()))
                            }))
              ]),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                Stack(
                  children: [
                    //mapa
                    Container(
                      width: 600,
                      height: 900,
                      child: FlutterMap(
                        options: MapOptions(
                          center: _selectedRota.path[0],
                          zoom: 18.0,
                        ),
                        mapController: _mapController,
                        children: [
                          TileLayer(
                            urlTemplate:
                                "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                            subdomains: ['a', 'b', 'c'],
                          ),
                          PolylineLayer(
                            polylines: [
                              Polyline(
                                  points: _selectedRota.path,
                                  strokeWidth: 4,
                                  color: Cores.vermelho)
                            ],
                          )
                        ],
                      ),
                    ),
                    //Container com informações rota
                    Visibility(
                      visible: mostraContainer,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Cores.branco,
                            ),
                          child: Text("Informações da rota"),
                          ),
                        ),
                      ),
                    )
                  ],
                )
                //Inicio mapa
              ]),
            ),

            /* BOTÃO ONIBUS/LOCAL */
            floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Cores.azul,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        //Icone onibus
                        Icon(
                          Icons.bus_alert,
                          color: Colors.white,
                          size: 35,
                        ),
                        //Switch
                        Switch(
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white,
                          value: _isSwitched,
                          onChanged: (value) {
                            Navigator.pushNamed(context, '/lugar');
                          },
                        ),
                        //Localização
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 35,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ],
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              title: Text('Carteira',
                                  style: TextStyle(
                                      color: Cores.azul,
                                      fontFamily: 'Comfortaa')),
                              content: Image.asset(
                                'assets/carteira.png',
                                width: 500,
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Icon(
                                      Icons.close,
                                      color: Cores.azul,
                                    )),
                              ],
                            );
                          });
                    },
                    backgroundColor: Cores.azul,
                    child: Icon(
                      Icons.wallet,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ])));
  }
}
