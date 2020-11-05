import 'package:flutter/material.dart';

class InicioProveedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Stack(
        children: <Widget>[
          _buildAppLogo()
        ],
      ),
    );
  }


  Widget _buildAppLogo(){
  return Container(
    width: 175.0,
    height: 175.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/img/Netjob-logoicono.png')),
      shape: BoxShape.circle,
    ),
  );
}
}