import 'package:flutter/material.dart';

class ContratosProfile extends StatelessWidget {
  const ContratosProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      
      body:Center(
        child:RaisedButton(onPressed: (){
          showDialog(context: context,
          builder:(context){
            return Dialog(
              shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)) ),
        child: Stack(
          alignment: Alignment.topCenter,
          overflow: Overflow.visible,
        children:<Widget>[Container(
          //padding: EdgeInsets.symmetric(horizontal:20),
          height:350,
          width: 360,
          child: Padding(padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height:50),
              new Text(
                "Jhon Snow",
                style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.blue[900]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                
                  Icon(Icons.star,color:Colors.yellow),
                  Icon(Icons.star,color:Colors.yellow),
                  Icon(Icons.star,color:Colors.yellow),
                  Icon(Icons.star,color:Colors.yellow),
                  Icon(Icons.star,color:Colors.yellow),
                
                  
                ],
              ),
              SizedBox(height:20),
              //prueba 
              new Text(
                "Marta supera todas las expectativas en su papel de Electricista. Ella siempre tiene   una actitud positiva. Se adapta fácilmente a los cambios rápidos en el lugar de trabajo.",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 17,
                  color: Colors.black),
              ),
            ],
          ),
          )
        ) ,
        Positioned(
          top: -50,
          child: CircleAvatar ( 
              radius: 55, 
              backgroundColor: Color (0xFF81D4FA), 
              child: CircleAvatar ( 
                radius: 50, 
                backgroundImage: AssetImage ('assets/img/snow.jpg'), 
              ), 
            )),
        ]
      )
            );
          }
          );
        },)
        
      )
    );
  }
}