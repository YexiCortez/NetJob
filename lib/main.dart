import 'package:flutter/material.dart';
import 'package:proyecto/home_screen.dart';
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
      title: 'Netjob pry',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}