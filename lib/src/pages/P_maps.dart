import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/views/fullscreenmap.dart';


class MapsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold 
    (
      appBar: AppBar
      (
        title: Text("Mapas"),
      ),
      body: FullScreenMap(),
      
    );
  }
}

