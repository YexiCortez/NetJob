import 'package:flutter/material.dart';
import 'package:proyecto/src/models/negocio_model.dart';
import 'package:proyecto/src/pages/P_inicio.dart';
import 'package:proyecto/src/pages/categorias.dart';
import 'package:proyecto/src/pages/proveedores_vista.dart';
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
          ListTile(
            leading: Icon(Icons.check_box, color: Colors.black,),
            title: Text('Habilidades: ${negocio.habilidades}'),
            onTap: ()=> {},
          ),
          ListTile(
            leading: Icon(Icons.translate, color: Colors.black,),
            title: Text('Idiomas: ${negocio.idiomas}'),
            onTap: ()=> {},
          ),
          ListTile(
            leading: Icon(Icons.bar_chart, color: Colors.black,),
            title: Text('Experiencia: ${negocio.exp}'),
            onTap: ()=> {},
          ),
         ListTile(
            leading: Icon(Icons.category, color: Colors.black,),
            title: Text('Categoría: ${negocio.categoria}'),
            onTap: ()=> {},
          ),
          ListTile(
            leading: Icon(Icons.location_city, color: Colors.black,),
            title: Text('Ciudad: ${negocio.ciudad}'),
            onTap: ()=> {},
          ),
          ListTile(
            leading: Icon(Icons.text_snippet, color: Colors.black,),
            title: Text('Descripción: ${negocio.descripcion}'),
            onTap: ()=> {},
          ),
          ListTile(
            leading: Icon(Icons.phone,color: Colors.black,),
            title: Text('Teléfono: ${negocio.telefono}'),
            onTap: ()=> {},
          ),
          ListTile(
            leading: Icon(Icons.mail, color: Colors.black,),
            title: Text('E-mail: ${negocio.email}'),
            onTap: ()=> {},
          ),
          
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                  Padding(padding: EdgeInsets.symmetric(vertical: 30),),
                  FlatButton(
                    padding:EdgeInsets.symmetric(horizontal: 40.0,vertical: 15),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
                    color: Colors.lightBlueAccent,
                    onPressed: ()=>{Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>VistaProveedores()))},
                    child: Text("Volver"),
                  ),

                  SizedBox(width:5.0,),
                  //cambiop
                  RaisedButton(
                    padding:EdgeInsets.symmetric(horizontal: 40.0,vertical: 15),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
                    color: Colors.black,
                    onPressed: ()=>{},
                    textColor: Colors.white,
                    child: Text("Contactar"))
                ],
              ),


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