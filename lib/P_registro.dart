import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body : Column 
      (
        children: <Widget>
        [
          Container
          (
            height: 500,
            width: 430,
            color: Colors.red,
          ),
          Positioned(
            child: Container(
              height: 54,
              decoration: BoxDecoration
              (
                color: Colors.white,
              ),
            ),
          ),
        ]
      )
    );
  }
}