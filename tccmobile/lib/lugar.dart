import 'package:tccmobile/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Lugar extends StatefulWidget {
  const Lugar({super.key});

  @override
  State<Lugar> createState() => _LugarState();
}

class _LugarState extends State<Lugar> {
  bool _isSwitched = true;

  void Pesquisa(){
    print("Pesquisa");
  }

  void Carteira(){
    print("Carteira");
  }

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
              backgroundColor: Cores.azul,
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  color: Cores.branco,
                  iconSize: 50,
                  onPressed: () {
                    Pesquisa();
                  },
                )
              ],
            ),
            //Menu
            drawer: Drawer(
              backgroundColor: Cores.brancoCerto,
              child: ListView(padding: EdgeInsets.zero, children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Cores.azul,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'AccessCity',
                        style: TextStyle(
                          color:
                              Color.fromARGB(255, 164, 26, 23), 
                          fontSize: 35,
                        ),
                      ),
                      Icon(
                        size: 30,
                        Icons.info_outline,
                        color: Color.fromARGB(255, 164, 26, 23),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                  leading: IconButton(
                      icon: Icon(Icons.person),
                      color: Cores.azul,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, '/perfil');
                      }),
                  title: Text('Meu Perfil', style: TextStyle(fontSize: 15, fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, color: Cores.azul),),
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                  leading: IconButton(
                      icon: Icon(Icons.wallet),
                      color: Cores.azul,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, '/documentos');
                      }),
                  title: Text('Meus documentos', style: TextStyle(fontSize: 15, fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, color: Cores.azul),),
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                  leading: IconButton(
                      icon: Icon(Icons.settings),
                      color: Cores.azul,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, '/configuracoes');
                      }),
                  title: Text('Configurações', style: TextStyle(fontSize: 15, fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, color: Cores.azul),),
                )
                )
              ]),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                //Inicio mapa
                Container(
                  width: 600,
                  height: 900,
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(-22.560992, -47.423818),
                      zoom: 13.0,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                      ),
                      
                    ],
                  ),
                ),
                //Fim mapa
              ]),
            ),
            floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 ToggleSwitch(
                  minWidth: 64,
                  minHeight: 52,
                  cornerRadius: 30,
                  radiusStyle: true,
                  iconSize: 60,
                  activeBgColor: [Cores.azulLogo],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  initialLabelIndex: 1,
                  icons: [Icons.bus_alert, Icons.location_on],
                  onToggle: (index){
                    if(index==0){
                      Navigator.pushNamed(context, '/onibus');
                    }
                  },
                ),
              ]
            )
          )
        );
  }
}