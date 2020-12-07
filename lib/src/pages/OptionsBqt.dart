import 'package:flutter/material.dart';

import 'package:image_ink_well/image_ink_well.dart';
import 'package:proyecto/src/pages/Bqtmap.dart';
import 'package:proyecto/src/pages/OptionsDavid.dart';
import 'package:proyecto/src/pages/OptionsVolcan.dart';
import 'package:proyecto/src/pages/davidmap.dart';
import 'package:proyecto/src/pages/dolegafoto.dart';
import 'package:proyecto/src/pages/mapspt2.dart';
import 'package:proyecto/src/pages/views/fullscreenmap.dart';
import 'package:proyecto/src/pages/volcanmap.dart';

class OptBqt extends StatelessWidget {
  const OptBqt({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) 
  {
    //holaaa
    
    List _empleos=["Chef","Arquitecto","Plomero","Ganadero","Fotografo","Agricultor","Corta césped","repostero"];
        return Scaffold(
          
          appBar: AppBar
          (
            centerTitle: true,
            title: Text("Boquete",style: TextStyle(fontSize: 25),),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.map,
                  color: Colors.white,
                ),
                onPressed: () =>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Bqtmap()))}}
              )
            ],
          ),
          body:ListView(
    
            children: <Widget>[
              Container
              (
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 119),
              padding: EdgeInsets.all(2), 
              child: Text(
                
                'Opciones',
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              ),
              ),
              
              Container(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                     InkWell(
                    child: Container(
                        width: 200,
                        color: Colors.blue[400],
                        child: const Center(child: Text('Boquete', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      //Bqtmap
                      onTap: ()=>{{Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>OptBqt()))}},
                    ),

                    InkWell(
                    child: Container(
                      
                      width: 200,
                      color: Colors.blue[600],
                      child: const Center(child: Text('David', style: TextStyle(fontSize: 18, color: Colors.white),)),
                     
                    ),
                      //Davidmap
                    onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>OpcionesDavid()))}}
                    ),
                    
                      InkWell(
                      child:Container(
                        width: 200,
                        color: Colors.blue[300],
                        child: const Center(child: Text('Volcan', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      //Volcanmap
                      onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>OptVolcan()))}},
                    ),

                    InkWell(
                      child: Container(
                        width: 200,
                        color: Colors.blue[500],
                        child: const Center(child: Text('Dolega', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      //FullScreenMap
                      onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>OpcionesScreen()))}},
                    ),

                   

                  

                  ],
                ),
              ),
            

              //cardBox
              Container(
                      
                    height: 571,
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2 ,
                      
                      children :<Widget>[

                        InkWell(
                          child: Container(
                              child: cartasBox(circulosS(image: AssetImage ('assets/img/chef.jpg')),_empleos[0],),
                            ),
                            onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Volcanmap()))}},
                          ),

                        InkWell(
                          child: Container(
                              child: cartasBox(circulosS(image: AssetImage ('assets/img/arquitecto.jpg')),_empleos[1]),
                            ),
                            onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Volcanmap()))}},
                          ),

                          InkWell(
                          child: Container(
                              child: cartasBox(circulosS(image: AssetImage ('assets/img/fontanero.jpg')),_empleos[2]),
                            ),
                            onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Volcanmap()))}},
                          ),

                          InkWell(
                          child: Container(
                              child: cartasBox(circulosS(image: AssetImage ('assets/img/ganadero.jpg')),_empleos[3]),
                            ),
                            onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Volcanmap()))}},
                          ),

                          InkWell(
                          child: Container(
                              child: cartasBox(circulosS(image: AssetImage ('assets/img/fotografo.jpg')),_empleos[4]),
                            ),
                            onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>DolegaFoto()))}},
                          ),

                          InkWell(
                          child: Container(
                              child: cartasBox(circulosS(image: AssetImage ('assets/img/agricultor.jpg')),_empleos[5]),
                            ),
                            onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Volcanmap()))}},
                          ),

                          InkWell(
                          child: Container(
                              child: cartasBox(circulosS(image: AssetImage ('assets/img/sesped.jpg')),_empleos[6]),
                            ),
                            onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Volcanmap()))}},
                          ),

                          InkWell(
                          child: Container(
                              child:   cartasBox(circulosS(image: AssetImage ('assets/img/repostero.jpg')),_empleos[7]),
                            ),
                            onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Volcanmap()))}},
                          ),
                      ], 
                      ),
                    ),
        ],  
      ),
    );
  }
}



Widget cartasBox(circulosS, String x,)
{
    return Container(
      child: InkWell(
        
      child: new Card
        (
          
          elevation: 10,
          child: new Column
          (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>
            [
              circulosS,
              new Text(x,
            style: TextStyle(fontSize: 15.0),)
          ],
                
        ),
        
        ),
        ),
  );
}

Widget circulosS({AssetImage image} )
{
  return Container(

    margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Color (0xFF81D4FA))
              ),
              child :CircleImageInkWell(
              
              onPressed: (){},
              size: 100,
              image: image,
              splashColor: Colors.white24,),

  );
}