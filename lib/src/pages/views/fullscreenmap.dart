import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';

class FullScreenMap extends StatefulWidget 
{

  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> 
{
  MapboxMapController mapController;

  final center = LatLng(8.560248, -82.413979);

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    ( 
      body: crearMapa(),

      floatingActionButton:botonesFlotantes() ,

    );
  }


  Column botonesFlotantes() 
{
  
  return Column 
  (
    //mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>
    [

      SizedBox( height: 35 ),
      //search space 
      FloatingActionButton.extended
        (
          heroTag: null,
          elevation: 50,
          label: Text('Search'),
          icon: Icon(Icons.search),
          onPressed: () {}
          ),

          SizedBox( height: 70 ),

        // ZoomIn
          FloatingActionButton(
          heroTag: null,
          child: Icon( Icons.zoom_in ),
          onPressed: () {
            mapController.animateCamera( CameraUpdate.zoomIn() );
          }
        
        ),
        
        SizedBox( height: 5 ),

        // ZoomOut
          FloatingActionButton(
          heroTag: null,
          child: Icon( Icons.zoom_out),
          onPressed: () {
            mapController.animateCamera( CameraUpdate.zoomOut() );
          }
        ),

        SizedBox( height: 5 ),

    ],
  );
}







  MapboxMap crearMapa()
{
  Padding(padding: EdgeInsets.symmetric(horizontal: 20.0,vertical:30),);
  Container(
    height: 20,

  );
  SizedBox(width:30,);
  return MapboxMap
  (       
         // styleString: 'mapbox://styles/billy270/ckh6cpexg1e9v19pn7m7k8x1a',
          onMapCreated: _onMapCreated,
          initialCameraPosition:
          const CameraPosition
          (
            target:LatLng(8.560248, -82.413979),
            zoom: 14, 
          ),
          
  );
}
}





