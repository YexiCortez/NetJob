

import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/P_maps.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';
import 'package:proyecto/src/pages/views/fullscreenmap.dart';

import 'login_page.dart';

class CrearMenu extends StatelessWidget {
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
          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InicioUsuario())),
        ),

        ListTile(
          leading: Icon(Icons.category_outlined, color: Colors.black,),
          title: Text('Categorías'),
          onTap: (){},
        ),

        ListTile(
          leading: Icon(Icons.map_outlined, color: Colors.black,),
          title: Text('Mapa'),
          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=>FullScreenMap())),
        ),

        ListTile(
          leading: Icon(Icons.supervised_user_circle_outlined, color: Colors.black,),
          title: Text('Acerca de nosotros'),
          onTap: (){},
        ),

        ListTile(
          leading: Icon(Icons.work_outline, color: Colors.black,),
          title: Text('Quiero ser Proveedor'),
          onTap: (){},
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
