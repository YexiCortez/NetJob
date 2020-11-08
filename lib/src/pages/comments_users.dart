import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/menu_izquierdo.dart';

class CommentsUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentarios'),
      ),
      drawer: CrearMenu(),
    );
  }
}