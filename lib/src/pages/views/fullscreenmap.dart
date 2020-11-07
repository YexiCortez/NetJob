import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

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
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>
    [
      // ZoomIn
        new FloatingActionButton(
          child: Icon( Icons.zoom_in ),
          onPressed: () {
            mapController.animateCamera( CameraUpdate.zoomIn() );
          }
        ),

        SizedBox( height: 5 ),

        // ZoomOut
        new FloatingActionButton(
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
  return MapboxMap
  (
          styleString: 'mapbox://styles/billy270/ckh6cpexg1e9v19pn7m7k8x1a',
          onMapCreated: _onMapCreated,
          initialCameraPosition:
          CameraPosition
          (
            target:center,
            zoom: 14, 
          ),
  );
}
}





