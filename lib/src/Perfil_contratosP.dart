import 'package:flutter/material.dart';

class ContratosProfile extends StatelessWidget {
  const ContratosProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
       appBar: AppBar
          (
            centerTitle: true,
            title: Text("Contratos",style: TextStyle(fontSize: 25),),
          ),

      body:ListView(
        scrollDirection: Axis.vertical,
       children: <Widget>[
         Container(
           decoration: BoxDecoration(
             border: Border(
                bottom: BorderSide( //                   <--- left side
                  color: Colors.blue,
                  width: 3.0,
                ),
          ),),
          child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          Container(
            height:140,
            width:100,
            margin: EdgeInsets.fromLTRB(1,20,10,0),
            //padding: EdgeInsets.fromLTRB(0,0,0,0), color: Colors.red,
            child: inicioimgPerfil('assets/img/snow.jpg'),
            ),


            Container(
              child:Column(
                children:<Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 120, 0),
                  child: Text( 
                  "Jhon Snow",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.blue[900]),
                  ),
              
                   
                ),
                //estrellas (puntuación)
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 129, 0),
                  child: estrellasIcon(),
                ),

                Container(
                  child: Text( 
                  "Marta supera todas las expectativ...",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
                  ),
                ),
                // boton inf
                Container(
                  height:15,
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 145, 20),
                  //padding: EdgeInsets.fromLTRB(10,20,5,20),color: Colors.blue[100],
                  
                  child: RaisedButton(onPressed: (){
                    showDialog(context: context,
                    builder:(context){
                      return Dialog(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)) ),
                        child: Stack(
                            alignment: Alignment.topCenter,
                            overflow: Overflow.visible,
                            children:<Widget>[
                              personaInf(),
                              imagnePerfil(),
                            ]
                        )
                      );
                    }
                    );
                    },)
                )
                ]
              )
              )
              ],
            ),),

             Container(
           decoration: BoxDecoration(
             border: Border(
                bottom: BorderSide( //                   <--- left side
                  color: Colors.blue,
                  width: 3.0,
                ),
          ),),
          child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          Container(
            height:140,
            width:100,
            margin: EdgeInsets.fromLTRB(1,20,10,0),
            //padding: EdgeInsets.fromLTRB(0,0,0,0), color: Colors.red,
            child: inicioimgPerfil('assets/img/yoda.jpg'),
            ),


            Container(
              child:Column(
                children:<Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 160, 0),
                  child: Text( 
                  "Grogu ",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.blue[900]),
                  ),
              
                   
                ),
                //estrellas (puntuación)
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 129, 0),
                  child: estrellasIcon(),
                ),

                Container(
                  child: Text( 
                  "Marta supera todas las expectativ...",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
                  ),
                ),
                // boton inf
                Container(
                  height:15,
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 145, 20),
                  //padding: EdgeInsets.fromLTRB(10,20,5,20),color: Colors.blue[100],
                  
                  child: RaisedButton(onPressed: (){
                    showDialog(context: context,
                    builder:(context){
                      return Dialog(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)) ),
                        child: Stack(
                            alignment: Alignment.topCenter,
                            overflow: Overflow.visible,
                            children:<Widget>[
                              personaInf(),
                              imagnePerfil(),
                            ]
                        )
                      );
                    }
                    );
                    },)
                )
                ]
              )
              ),


              




              ],
            ),),




          Container(
           decoration: BoxDecoration(
             border: Border(
                bottom: BorderSide( //                   <--- left side
                  color: Colors.blue,
                  width: 3.0,
                ),
          ),),
          child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          Container(
            height:140,
            width:100,
            margin: EdgeInsets.fromLTRB(1,20,10,0),
            //padding: EdgeInsets.fromLTRB(0,0,0,0), color: Colors.red,
            child: inicioimgPerfil('assets/img/ellen.jpg'),
            ),


            Container(
              child:Column(
                children:<Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 120, 0),
                  child: Text( 
                  "Ellen Pomp",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.blue[900]),
                  ),
              
                   
                ),
                //estrellas (puntuación)
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 129, 0),
                  child: estrellasIcon(),
                ),

                Container(
                  child: Text( 
                  "Marta supera todas las expectativ...",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
                  ),
                ),
                // boton inf
                Container(
                  height:15,
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 145, 20),
                  //padding: EdgeInsets.fromLTRB(10,20,5,20),color: Colors.blue[100],
                  
                  child: RaisedButton(onPressed: (){
                    showDialog(context: context,
                    builder:(context){
                      return Dialog(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)) ),
                        child: Stack(
                            alignment: Alignment.topCenter,
                            overflow: Overflow.visible,
                            children:<Widget>[
                              personaInf(),
                              imagnePerfil(),
                            ]
                        )
                      );
                    }
                    );
                    },)
                )
                ]
              )
              )
              ],
            ),),

            Container(
           decoration: BoxDecoration(
             border: Border(
                bottom: BorderSide( //                   <--- left side
                  color: Colors.blue,
                  width: 3.0,
                ),
          ),),
          child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          Container(
            height:140,
            width:100,
            margin: EdgeInsets.fromLTRB(1,20,10,0),
            //padding: EdgeInsets.fromLTRB(0,0,0,0), color: Colors.red,
            child: inicioimgPerfil('assets/img/lexy.jpg'),
            ),


            Container(
              child:Column(
                children:<Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 120, 0),
                  child: Text( 
                  "Lexy Grey",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.blue[900]),
                  ),
              
                   
                ),
                //estrellas (puntuación)
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 129, 0),
                  child: estrellasIcon(),
                ),

                Container(
                  child: Text( 
                  "Marta supera todas las expectativ...",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
                  ),
                ),
                // boton inf
                Container(
                  height:15,
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 145, 20),
                  //padding: EdgeInsets.fromLTRB(10,20,5,20),color: Colors.blue[100],
                  
                  child: RaisedButton(onPressed: (){
                    showDialog(context: context,
                    builder:(context){
                      return Dialog(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)) ),
                        child: Stack(
                            alignment: Alignment.topCenter,
                            overflow: Overflow.visible,
                            children:<Widget>[
                              personaInf(),
                              imagnePerfil(),
                            ]
                        )
                      );
                    }
                    );
                    },)
                )
                ]
              )
              )
              ],
            ),),

            Container(
           decoration: BoxDecoration(
             border: Border(
                bottom: BorderSide( //                   <--- left side
                  color: Colors.blue,
                  width: 3.0,
                ),
          ),),
          child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          Container(
            height:140,
            width:100,
            margin: EdgeInsets.fromLTRB(1,20,10,0),
            //padding: EdgeInsets.fromLTRB(0,0,0,0), color: Colors.red,
            child: inicioimgPerfil('assets/img/rob.jpg'),
            ),


            Container(
              child:Column(
                children:<Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 120, 0),
                  child: Text( 
                  "Rob Amell",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.blue[900]),
                  ),
              
                   
                ),
                //estrellas (puntuación)
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 129, 0),
                  child: estrellasIcon(),
                ),

                Container(
                  child: Text( 
                  "Marta supera todas las expectativ...",
                  style: TextStyle(
                  fontFamily: "Roboto",fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
                  ),
                ),
                // boton inf
                Container(
                  height:15,
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 145, 20),
                  //padding: EdgeInsets.fromLTRB(10,20,5,20),color: Colors.blue[100],
                  
                  child: RaisedButton(onPressed: (){
                    showDialog(context: context,
                    builder:(context){
                      return Dialog(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)) ),
                        child: Stack(
                            alignment: Alignment.topCenter,
                            overflow: Overflow.visible,
                            children:<Widget>[
                              personaInf(),
                              imagnePerfil(),
                            ]
                        )
                      );
                    }
                    );
                    },)
                )
                ]
              )
              )
              ],
            ),),
        ]
      )
    );
  }
}




Widget personaInf()
{
  return Container(
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
              estrellasIcon(),
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
        );
}

Widget imagnePerfil()
{
  return Positioned(
          top: -50,
          child: CircleAvatar ( 
              radius: 55, 
              backgroundColor: Color (0xFF81D4FA), 
              child: CircleAvatar ( 
                radius: 50, 
                backgroundImage: AssetImage ('assets/img/snow.jpg'), 
              ), 
            ));
}

Widget inicioimgPerfil(String s)
{
  return Positioned(
          
          child: CircleAvatar ( 
              radius: 50, 
              backgroundColor: Color (0xFF81D4FA), 
              child: CircleAvatar ( 
                radius: 45, 
                backgroundImage: AssetImage (s), 
              ), 
            ));
}

Widget estrellasIcon()
{
  return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                
                  Icon(Icons.star,color:Colors.yellow),
                  Icon(Icons.star,color:Colors.yellow),
                  Icon(Icons.star,color:Colors.yellow),
                  Icon(Icons.star,color:Colors.yellow),
                  Icon(Icons.star,color:Colors.yellow),
                
                  
                ],
              );
}