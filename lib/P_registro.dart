import 'package:flutter/material.dart';

import 'package:proyecto/P_registro/PasswordBox.dart';
import 'package:proyecto/P_registro/Regisboxtitle.dart';
import 'package:proyecto/P_registro/containers.dart';

class RegistroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body : Column 
      (
        children: <Widget>
        [
          // aqui debe ir el logo 

          Container
          ( 
            padding: EdgeInsets.fromLTRB(0,10,10,0),
            child: Image.asset('assets/img/Netjob-logoicono.png',height: 270,width: 300,), 
          ),
          //inicio de recuadros de llenado
            RegisBoxtitle
            (
              hintText: "Nombre de Usuario",
              onChanged: (value){},
            ),
            PasswordBox(),
            RegisBoxtitle
            (
              hintText: "Correo Electrónico",
              onChanged: (value){},
            ),
            RegisBoxtitle
            (
              hintText: "Confirmar Correo",
              onChanged: (value){},
            ),

        ]
      )
    );
  }
}


