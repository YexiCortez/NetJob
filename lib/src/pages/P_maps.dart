import 'package:flutter/material.dart';
import 'package:proyecto/views/fullscreenmap.dart';

class MapsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold 
    (
      appBar: AppBar
      (
        title: Text("Mapasa"),
      ),
      body:
        
          FullScreenMap()
      
    );
  }
}


