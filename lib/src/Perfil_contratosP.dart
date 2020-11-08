import 'package:flutter/material.dart';

class ContratosProfile extends StatelessWidget {
  const ContratosProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body:Center(
        child:Container(
          //padding: EdgeInsets.symmetric(horizontal:20),
          height:320,
          width: 350,
          child: Padding(padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height:50),
              new Text(
                "Jhon Snow",
                style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.blue[900]),
              ),
              SizedBox(height:20),
              new Text(
                "Marta supera todas las expectativas en su npapel de Electricista. Ella siempre tiene   una actitud positiva. Se adapta fácilmente a los cambios rápidos en el lugar de trabajo. Trabaja bien bajo presión sola y con otros miembros del equipo . Está orientada a los detalles y completa las tareas de manera oportuna.",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 17,
                  color: Colors.black),
              ),
            ],
          ),
          )
        ) ,
      )
    );
  }
}