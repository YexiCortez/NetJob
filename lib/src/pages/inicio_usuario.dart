import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/P_maps.dart';
import 'package:proyecto/src/pages/abousUs_page.dart';
import 'package:proyecto/src/pages/menu_izquierdo.dart';
import 'package:proyecto/src/pages/proveedores_usuario.dart';
import 'package:proyecto/src/pages/provider_home.dart';
import 'package:proyecto/src/pages/sign_form.dart';
import 'package:proyecto/src/pages/views/fullscreenmap.dart';

class InicioUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
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
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/img/logo.png'),
                            radius: 100.0,
                          ),
                          //SizedBox(height: 20.0,),
                          //_buildAppLogo()
                        ],
                      ),
                    ),
                  
                  SizedBox(height: 30.0),
                  Text('¡Gracias por confiar en nosotros!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 45.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _imgGenerator('assets/img/categoria.png'),
                          _buttonGenerator('Categorías', '', context,()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ProviderList()))}})
                        ],
                      ),
                      SizedBox(width: 5.0,),
                      Column(
                        children: [
                          _imgGenerator('assets/img/mapa.png'),
                          _buttonGenerator('Mapa', '', context,()=>{{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>FullScreenMap()))}})
                        ],
                      )
                    ],
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          _imgGenerator('assets/img/aboutUs.png'),
                          _buttonGenerator('Acerca de', '', context,()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>AboutUsPage()))})
                        ],
                      ),
                      SizedBox(width: 5.0,),
                      Column(
                        children: [
                          _imgGenerator('assets/img/Proveedor.png'),
                          _buttonGenerator('Quiero \ntrabajar', '', context,()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InputPage()))})
                        ],
                      )
                    ],
                  ),
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

Widget _imgGenerator(String imgRt){
  return Container(
    
    width: 120.0,
    height:120.0,
    decoration: BoxDecoration(
      border: Border.all(),
      boxShadow:[
        BoxShadow(
          color: Colors.white,
          spreadRadius: 1.0,
          blurRadius: 7.0,
          offset: Offset(0,3),
        )
      ] ,
      image: DecorationImage(
        image: AssetImage(imgRt),
        fit: BoxFit.scaleDown
      ),
      shape: BoxShape.circle
      
    ),
  );
}

Widget _buttonGenerator(String cat,String rtImg, BuildContext context, Function f1 ){
  return FlatButton(
    height: 35.0,
    padding:EdgeInsets.symmetric(horizontal: 30.0),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
    color: Colors.lightBlueAccent,
    onPressed: f1,
    child: Text(cat,textAlign: TextAlign.center),);
}

}