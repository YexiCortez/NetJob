import 'package:flutter/material.dart';



class VistaProveedores extends StatefulWidget {
  VistaProveedores({Key key}) : super(key: key);

  @override
  _VistaProveedoresState createState() => _VistaProveedoresState();
}

class _VistaProveedoresState extends State<VistaProveedores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.lightBlueAccent,
       ),
       body: ListView(
         children: [
           
         ],
       ),
    );
  }
}