import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';
import 'package:proyecto/src/pages/mapspt2.dart';

class FullScreenMap extends StatefulWidget 
{

  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}


class _FullScreenMapState extends State<FullScreenMap> 
{
  MapboxMapController mapController;
  String searchQuery = "Search query";
  bool _isSearching = false;
  final center = LatLng(8.560248, -82.413979);
  TextEditingController  _searchQuery;
  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }
  @override
  void initState() {
    super.initState();
    _searchQuery = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    ( 
      appBar: AppBar(
        actions: _buildActions(),
        leading: _isSearching ? const BackButton() : null,
        title: _isSearching ? _buildSearchField() : _buildTitle(context),
      ),
      body: crearMapa(),

      floatingActionButton:botonesFlotantes() ,
        
    );
  }


  Column botonesFlotantes() 
{
  
  return Column 
  (
    
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>
    [

      SizedBox( height: 130.0 ),
      //search space 
      FloatingActionButton.extended
        (
          heroTag: null,
          elevation: 50,
          label: Text('Opciones'),
          icon: Icon(Icons.aspect_ratio),
          onPressed: ()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>OpcionesScreen()))},
          ),
      
      SizedBox( height: 480 ),

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





Widget _buildSearchField() {
    return new TextField(
      controller: _searchQuery,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
        hintStyle: const TextStyle(color: Colors.white30),
      ),
      style: const TextStyle(color: Colors.white, fontSize: 16.0),
      //onChanged: updateSearchQuery,
    );
  }

List<Widget> _buildActions() {

    if (_isSearching) {
      return <Widget>[
        new IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (_searchQuery == null || _searchQuery.text.isEmpty) {
              _stopSearching();
              //Navigator.pop(context);
              //return;
            }
            _clearSearchQuery();
          },
        ),
      ];
    }

    return <Widget>[
      new IconButton(
        icon: const Icon(Icons.search),
        onPressed: _startSearch,
      ),
    ];
  }
void _clearSearchQuery() {
    print("close search box");
    setState(() {
      _searchQuery.clear();
      //updateSearchQuery("Search query");
    });
  }
void _startSearch() {
    print("open search box");
    //ModalRoute
        //.of(context)
        //.addLocalHistoryEntry(new LocalHistoryEntry(onRemove: _stopSearching));
    setState(() {
      _isSearching = true;
    });
  }
void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  
  Widget _buildTitle(BuildContext context) {
    //var horizontalTitleAlignment =
    //Platform.isIOS ? CrossAxisAlignment.center : CrossAxisAlignment.start;

    return new InkWell(
      //onTap: () => scaffoldKey.currentState.openDrawer(),
      child: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const Text('Mapa'),
          ],
        ),
      ),
    );
  }


}






