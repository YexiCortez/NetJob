import 'package:flutter/material.dart';
import 'package:proyecto/src/bloc/provider.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';
import 'package:proyecto/src/pages/provider_home.dart';
import 'package:proyecto/src/pages/pruebalog.dart';
import 'package:proyecto/src/pages/transicion_inicio.dart';
import 'package:proyecto/src/preferencias_usuario/preferencias_usuario.dart';
//import 'package:proyecto/src/pages/home_screen.dart';

//import 'src/pages/login_page.dart';
void main () async
{
  WidgetsFlutterBinding.ensureInitialized();
    final prefs = new PreferenciasUsuario();
    await prefs.initPrefs();
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget 
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    //final prefs = new PreferenciasUsuario();
    //print(prefs.token);
    return Provider(child:
      MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netjob',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => LoginPag(),
        'escoger':(BuildContext context)=>HomePage(),
        'proveedor':(BuildContext context)=>InicioProveedor(),
        'cliente':(BuildContext context)=>InicioUsuario(),
        
      },
      //home: HomeScreen(),
    )
    ); 
  }
}