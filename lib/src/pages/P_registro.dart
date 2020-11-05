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
            //padding: EdgeInsets.fromLTRB(0,10,10,0),
            child: Image.asset('assets/img/Netjob-logoicono.png',width: 175.0,
            height: 175.0,), 
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
          
          Container
          (
            height:60,
            margin:EdgeInsets.fromLTRB (10,30,10,40),
            child: Row
            (
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Image(image:AssetImage('assets/img/facebook.png')),
                  //SizedBox(width:4),
                  Image(image:AssetImage('assets/img/google.jpg')),
                  //SizedBox(width:4),
                  Image(image:AssetImage('assets/img/linkedin.png')),
                ],
            )
          ),
          SizedBox( width:10,),
          ButtonTheme
          (
            //padding: EdgeInsets.all(8.0),
            minWidth: MediaQuery.of(context).size.width*0.8,
            height: 40,

                      child: RaisedButton
                      (
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        color: Colors.blue,
                        shape: RoundedRectangleBorder
                        (
                          borderRadius:BorderRadius.circular(20)
                          
                        ),
                      child: Text('Registrarme',style: TextStyle(color: Colors.black,fontSize: 22),),),
          ),
        ]
      )
    );
  }
}


