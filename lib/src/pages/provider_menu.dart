

import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';
import 'package:proyecto/src/pages/login_page.dart';
import 'package:proyecto/src/pages/provider_home.dart';
import 'package:url_launcher/url_launcher.dart';

class CrearMenu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: CircleAvatar(
              backgroundImage:  AssetImage('assets/img/no-pic.png'),
              radius: 75.0,
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
          onTap: (){},
        ),

        ListTile(
          leading: Icon(Icons.phone, color: Colors.black,),
          title: Text('Contáctenos'),
          onTap: (){ launch('https://wa.me/50763631014');},
        ),
        ListTile(
          leading: Icon(Icons.logout, color: Colors.black,),
          title: Text('Cerrar Sesión'),
          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(context)=>LoginPage()));},
        ),
        
      ],
    )
    );
  }
}
