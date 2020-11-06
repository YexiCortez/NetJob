import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/P_maps.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Column
      (
        children: <Widget>
        [
          Container
          ( 
            padding: EdgeInsets.fromLTRB(8,75,0,0),
            child: Image.asset('assets/img/Netjob-logoicono.png',height: 400,width: 400,), 
          ),
          Container
          ( 
            child: Text("¿Qué necesitas?",
              style: TextStyle
              (
              fontWeight: FontWeight.bold,
              fontSize: 30,
              ),
            ),
          ),
          Container
          (
            child : Center 
            (
              child: Row(
                children: <Widget>
                [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 100),),
                  FlatButton(
                    padding:EdgeInsets.symmetric(horizontal: 40.0,vertical: 15),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
                    color: Colors.lightBlueAccent,
                    onPressed: ()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InicioUsuario()))},
                    child: Text("CONTRATAR"),),

                    SizedBox(width:30,),
                  //cambiop
                  RaisedButton(
                    padding:EdgeInsets.symmetric(horizontal: 40.0,vertical: 15),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
                    color: Colors.black,
                    onPressed: ()=>{},
                    textColor: Colors.white,
                    child: Text("TRABAJAR"))
                ],
              ),
            )

          ),

        ]
      ),
    );
  }
}