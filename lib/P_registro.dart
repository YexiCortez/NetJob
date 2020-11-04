import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(  title: Text('hola') ),

      
      body : Column 
      (
        //holalasldlas
        children: <Widget>
        [
          // aqui debe ir el logo 
          Container
          (
            height: 200,
            width: 200,
          ),

            Positioned
            (
              bottom:0,
              left: 0,
              right: 0,
              child: Container
              (
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                height: 54,
                decoration: BoxDecoration
                (
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(20), 
                  border:Border.all
                  (
                    color: Colors.lightBlueAccent,
                    width: 4,
                  ),
                  boxShadow:
                  [
                    BoxShadow
                    (
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Colors.black.withOpacity(0.23),
                    )
                  ]
                  
                ),
              ),
            ),
        ]
      )
    );
  }
}