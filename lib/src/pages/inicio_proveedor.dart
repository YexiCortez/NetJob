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
          Center(
            child: Column(
              children: [
                SizedBox(height: 10.0),
                Positioned(
                      top: 85.0,
                      left: 110.0,
                      child: _buildAppLogo(),
                      ),
                SizedBox(height: 30.0),
                Text('¡Gracias por confiar en nosotros!',
                style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                    ),

              ],
            ),
          )
        ],
      ),
    );
  }


  Widget _buildAppLogo(){
  return Container(
    width: 200.0,
    height: 200.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/img/Netjob-logoicono.png')),
      shape: BoxShape.circle,
    ),
  );
}
}