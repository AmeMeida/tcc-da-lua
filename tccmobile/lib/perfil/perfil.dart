import 'package:flutter/material.dart';
import 'package:tccmobile/main.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  List<bool> isSelected = [
    true,
    false
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      backgroundColor: Cores.azulFundo,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Cores.azulLogo
          ),
          child: ToggleButtons(
          children: const[
            Icon(Icons.bus_alert),
            Icon(Icons.location_on)
          ],
          renderBorder: false,
          borderRadius: BorderRadius.circular(30),
          fillColor: Cores.azul,
          color: Cores.branco,
          selectedColor: Cores.branco,
          onPressed: (int newIndex){
            setState(() {
              for(int index=0;index<isSelected.length;index++){
                if(index==newIndex){
                  isSelected[index]=true;
                }else{
                  isSelected[index]=false;
                }
              }
            });
          },
          isSelected: isSelected
        ),
        )
      ),
    );
  }
}

//puta merda é toggle switch e nao toggle button burra