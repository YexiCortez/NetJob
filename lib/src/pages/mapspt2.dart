import 'package:flutter/material.dart';

import 'package:image_ink_well/image_ink_well.dart';
import 'package:proyecto/src/pages/Bqtmap.dart';
import 'package:proyecto/src/pages/davidmap.dart';
import 'package:proyecto/src/pages/views/fullscreenmap.dart';
import 'package:proyecto/src/pages/volcanmap.dart';

class OpcionesScreen extends StatelessWidget {
  const OpcionesScreen({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) 
  {
    //holaaa
    
    List _empleos=["Chef","hola","chofer"];
        return Scaffold(
          
          appBar: AppBar
          (
            title: Text("Mapasa"),
          ),
          body:ListView(
    
            children: <Widget>[
              Container
              (
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
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
                      color: Colors.blue[600],
                      child: const Center(child: Text('David', style: TextStyle(fontSize: 18, color: Colors.white),)),
                     
                    ),
                    
                    onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Davidmap()))}}
                    ),

                    InkWell(
                      child: Container(
                        width: 200,
                        color: Colors.blue[500],
                        child: const Center(child: Text('Dolega', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>FullScreenMap()))}},
                    ),

                    InkWell(
                    child: Container(
                        width: 200,
                        color: Colors.blue[400],
                        child: const Center(child: Text('Boquete', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Bqtmap()))}},
                    ),

                    InkWell(
                      child:Container(
                        width: 200,
                        color: Colors.blue[300],
                        child: const Center(child: Text('Volcan', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      onTap: ()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Volcanmap()))}},
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
                        
                        cartasBox(circulosS(image: AssetImage ('assets/img/chef.jpg')),_empleos[0]),
                        cartasBox(circulosS(image: AssetImage ('assets/img/arquitecto.jpg')),_empleos[1]),
                        cartasBox(circulosS(image: AssetImage ('assets/img/fontanero.jpg')),_empleos[2]),
                        cartasBox(circulosS(image: AssetImage ('assets/img/ganadero.jpg')),_empleos[0]),
                        cartasBox(circulosS(image: AssetImage ('assets/img/fotografo.jpg')),_empleos[0]),
                        cartasBox(circulosS(image: AssetImage ('assets/img/agricultor.jpg')),_empleos[0]),
                        cartasBox(circulosS(image: AssetImage ('assets/img/sesped.jpg')),_empleos[0]),
                        cartasBox(circulosS(image: AssetImage ('assets/img/repostero.jpg')),_empleos[0]),
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
  );
}

Widget circulosS({AssetImage image})
{
  return Container(

    margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Color (0xFF81D4FA))
              ),
              child :CircleImageInkWell(
              onPressed: () { },
              size: 100,
              image: image,
              splashColor: Colors.white24,)

  );
}