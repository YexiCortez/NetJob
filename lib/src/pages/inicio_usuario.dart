import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/P_maps.dart';
import 'package:proyecto/src/pages/abousUs_page.dart';
import 'package:proyecto/utilities/menu_izquierdo.dart';

class InicioUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: CrearMenu(),
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
        child: Stack(
          children: <Widget>[          
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                   Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.0,),
                          _buildAppLogo()
                        ],
                      ),
                    ),
                  
                  SizedBox(height: 30.0),
                  Text('¡Gracias por confiar en nosotros!',
                  style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 45.0),
                  Row(
                    children: [
                      SizedBox(width: 10.0,),
                      _categoriaImg(),
                      SizedBox(width: 50.0,),
                      _mapaImg(),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      SizedBox(width: 10.0,),
                      _buttomCat(),
                      SizedBox(width: 35.0,),
                      _buttomMap(context),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      SizedBox(width: 10.0,),
                      _aboutUsImg(),
                      SizedBox(width: 50.0,),
                      _proveedorImg(),
                    ],
                  ),
                  SizedBox(height: 15.0,), 
                  Row(
                    children: [
                      SizedBox(width: 10.0,),
                      _buttomAboutUs(context),
                      SizedBox(width: 35.0,),
                      _buttomProveedor(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _buildAppLogo(){
  return Container(
    width: 200.0,
    height: 200.0,
    decoration: BoxDecoration(
      
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/img/Netjob-logoicono.png')),
      shape: BoxShape.circle, 
    ),
  );
}

Widget _categoriaImg(){
  return Container(
    width: 120.0,
    height:120.0,
    decoration: BoxDecoration(
      boxShadow:[
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1.0,
          blurRadius: 7.0,
          offset: Offset(0,3)
        )
      ] ,
      image: DecorationImage(
        image: AssetImage('assets/img/categoria.png')
      ),
      shape: BoxShape.circle
      
    ),
  );
}


Widget _mapaImg(){
  return Container(
    width: 120.0,
    height:120.0,
    decoration: BoxDecoration(
      boxShadow:[
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1.0,
          blurRadius: 7.0,
          offset: Offset(0,3)
        )
      ] ,
      image: DecorationImage(
        image: AssetImage('assets/img/mapa.png')
      ),
      shape: BoxShape.circle,
      color: Colors.white
    ),
  );
}


Widget _buttomCat(){
  return FlatButton(
    height: 35.0,
    padding:EdgeInsets.symmetric(horizontal: 30.0),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
    color: Colors.lightBlueAccent,
    onPressed: ()=>{},
    child: Text('Categorías'),);
}

Widget _buttomMap(BuildContext context){
  return FlatButton(
    height: 35.0,
    padding:EdgeInsets.symmetric(horizontal: 50.0),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
    color: Colors.lightBlueAccent,
    onPressed: ()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MapsScreen()))},
    child: Text('Mapa'),);
}


Widget _aboutUsImg(){
  return Container(
    width: 120.0,
    height:120.0,
    decoration: BoxDecoration(
      boxShadow:[
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1.0,
          blurRadius: 7.0,
          offset: Offset(0,3)
        )
      ] ,
      image: DecorationImage(
        image: AssetImage('assets/img/aboutUs.png')
      ),
      shape: BoxShape.circle,
      color: Colors.white
    ),
  );
}

Widget _proveedorImg(){
  return Container(
    width: 120.0,
    height:120.0,
    decoration: BoxDecoration(
      boxShadow:[
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1.0,
          blurRadius: 7.0,
          offset: Offset(0,3)
        )
      ] ,
      image: DecorationImage(
        image: AssetImage('assets/img/Proveedor.png')
      ),
      shape: BoxShape.circle,
      color: Colors.white
    ),
  );
}


Widget _buttomAboutUs(BuildContext context){
  return FlatButton(
    height: 35.0,
    padding:EdgeInsets.symmetric(horizontal: 30.0),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
    color: Colors.lightBlueAccent,
    onPressed: ()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>AboutUsPage()))},
    child: Text('Acerca de \n Nosotros'),);
}

Widget _buttomProveedor(){
  return FlatButton(
    height: 35.0,
    padding:EdgeInsets.symmetric(horizontal: 30.0),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
    color: Colors.lightBlueAccent,
    onPressed: ()=>{},
    child: Text('Quiero  ser \n Proveedor'),);
}



}