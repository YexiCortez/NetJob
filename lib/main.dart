import 'package:flutter/material.dart';
//import 'package:proyecto/src/pages/home_screen.dart';

import 'src/pages/login_page.dart';
void main() 
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netjob',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => LoginPage(),
      },
      //home: HomeScreen(),
    );
  }
}