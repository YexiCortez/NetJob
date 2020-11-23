
import 'package:flutter/material.dart';
import 'package:proyecto/src/models/persona_model.dart';
import 'package:proyecto/src/pages/abousUs_page.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';
import 'package:proyecto/src/pages/provider_home.dart';
import 'package:proyecto/src/pages/pruebalog.dart';
import 'package:proyecto/src/pages/sign_form.dart';
import 'package:url_launcher/url_launcher.dart';

class CrearMenu2 extends StatelessWidget {
  PersonaModel persona=new PersonaModel();
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: CircleAvatar(
              backgroundImage:( persona.fotoUrl == null ) 
              ? ( AssetImage('assets/img/no-pic.png'))
              : NetworkImage( persona.fotoUrl ),  //AssetImage('assets/img/no-pic.png'),
              radius: 75.0,
              backgroundColor: Colors.lightBlueAccent,
              
          ),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
          ),
        ),

        ListTile(
          leading: Icon(Icons.home_outlined, color: Colors.black,),
          title: Text('Inicio'),
          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InicioProveedor())),
        ),

        ListTile(
          leading: Icon(Icons.work_outline, color: Colors.black,),
          title: Text('Mis Contratos'),
          onTap: (){},
        ),

        ListTile(
          leading: Icon(Icons.history, color: Colors.black,),
          title: Text('Historial'),
          onTap: (){},
        ),

        ListTile(
          leading: Icon(Icons.supervised_user_circle_outlined, color: Colors.black,),
          title: Text('Acerca de'),
          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=>AboutUsPage())),
        ),

        ListTile(
          leading: Icon(Icons.phone, color: Colors.black,),
          title: Text('Contáctenos'),
          onTap: (){ launch('https://wa.me/50763631014');},
        ),
        ListTile(
          leading: Icon(Icons.app_registration, color: Colors.black,),
          title: Text('Registrar un negocio'),
          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InputPage()));},
        ),
        ListTile(
          leading: Icon(Icons.logout, color: Colors.black,),
          title: Text('Cerrar Sesión'),
          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(context)=>LoginPag()));},
        ),
        
        
      ],
    )
    );
  }
   
}
