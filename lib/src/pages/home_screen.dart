import 'package:flutter/material.dart';

import 'P_registro.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold 
    (
      body : Center
      (
        //Esto es para pasar de la primera pag a la segunda 
        child: RaisedButton
        (
          child:Text('Registrarme'),
          onPressed:() 
          {
            Navigator.of(context).push(MaterialPageRoute
            (
              builder: (context) => RegistroScreen(),
            ));
          },
        )
      )
    );
  }
}