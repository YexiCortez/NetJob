import 'package:flutter/material.dart';

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
            padding: EdgeInsets.fromLTRB(0,0,0,0),
            child: Image.asset('assets/img/Netjob-logoicono.png',height: 270,width: 300,), 
          ),
        ]
      ),
    );
  }
}