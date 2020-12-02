import 'package:flutter/material.dart';
import 'package:proyecto/src/models/negocio_model.dart';
import 'dart:io';

import 'package:proyecto/src/providers/providers.dart';

class NegocioPage extends StatefulWidget {
  @override
  _NegocioPageState createState() => _NegocioPageState();
}

class _NegocioPageState extends State<NegocioPage> {

  final formKey = GlobalKey<FormState>();
  final negocioProvider = new NegocioProvider();

  NegocioModel negocio=new NegocioModel();
  File foto;

  @override
  Widget build(BuildContext context) {

    final NegocioModel prodData = ModalRoute.of(context).settings.arguments;
    if ( prodData != null ) {
      negocio= prodData;
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(negocio.nombreNegocio),

      ),
      body: ListView(
        children: [
          FadeInImage(placeholder: AssetImage('assets/img/jar-loading.gif'), image:NetworkImage(negocio.fotoUrl),height: 200,width: 200,fit: BoxFit.cover,),
        
          _crearT(negocio.nombreNegocio),
          _crearCont('Habilidades: ${negocio.habilidades}'),
          _crearCont('Idiomas: ${negocio.idiomas}'),
          _crearCont('Experiencia: ${negocio.exp}'),
          _crearCont('Categoría: ${negocio.categoria}'),
          _crearCont('Ciudad: ${negocio.ciudad}'),
          _crearCont('Descripción: ${negocio.descripcion}'),
          _crearCont('Teléfono: ${negocio.telefono}'),
          _crearCont('E-Mail: ${negocio.email}'),
          



        ],
      ),
    );
  }
  _crearCont(String x){
    return Container(
      padding: EdgeInsets.all(15.0),
      //alignment: AlignmentGeometry.lerp(a, b, t),
      child: Text(x,textAlign: TextAlign.justify,textScaleFactor: 1.1,),
    );
  }
  _crearT(String x){
    return Container(
      padding: EdgeInsets.all(15.0),
      //alignment: AlignmentGeometry.lerp(a, b, t),
      child: Text(x,textAlign: TextAlign.center,textScaleFactor: 1.5,),
    );
  }
}