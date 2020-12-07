
import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';
import 'package:proyecto/src/pages/menu_izquierdo.dart';


class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de Nosotros'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: CrearMenu(),
      body: Padding(
        padding: EdgeInsets.all(35.0),
        child: Stack(
          children: [
            _caja(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  SizedBox(height: 45.0,),
                  _buildAppLogo(),
                ],
              ),     
            ),
            Container(
              child: Center(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [_buttomBack(context)],),
              ),
            )
          ],
                   
        ),
            ),
        );
      
  }




Widget _buildAppLogo(){
  return Container(
    //hild: Column(children: [SizedBox(height: 100.0,)],),
    width: 150.0,
    height: 150.0,
    decoration: BoxDecoration(
      boxShadow:[
        BoxShadow(
          color: Colors.lightBlueAccent,
          spreadRadius: 1.0,
          blurRadius: 7.0,
          
        )
      ] ,
      image: DecorationImage(
        image: AssetImage('assets/img/Netjob-logoicono.png')
      ),
      shape: BoxShape.circle,
      color: Colors.white,
      
    ),
    
  );
}


Widget _caja(){
  return Container(
         padding: EdgeInsets.only(top:150.0),
         height: 600.0,
         width: 400.0,
         color: Colors.transparent,
         child: Container(
           child: Center(
             child: new 
             Text('NetJob es una red de empresas, \nemprendedores y MyPymes que \n busca ser un puente entre los \n proveedores de servicios y los\n usuarios, para que ambos puedan\n verse beneficiados de una manera\n complementaria.',
             style: TextStyle(fontSize: 18.0, fontFamily: 'OpenSans'),
             textAlign: TextAlign.center,),
           ),
         decoration: BoxDecoration(
        		color: Colors.white,
        		borderRadius: BorderRadius.all(Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlueAccent,
                spreadRadius: 2.0,
                blurRadius: 10.0,
              )
            ],
            ),
        	),
        );
}

Widget _buttomBack(BuildContext context){
  return Container(
    //padding: EdgeInsets.only(right: 100.0),

      child: FlatButton(
      height: 45.0,
      padding:EdgeInsets.symmetric(horizontal: 75.0),
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
      color: Colors.lightBlueAccent,
      onPressed: ()=>{Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>InicioUsuario()))},
      child: Text('Volver'),
      splashColor: Colors.white,
      
      
      ),
  );
}


}