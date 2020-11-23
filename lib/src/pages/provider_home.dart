import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto/src/pages/abousUs_page.dart';
import 'package:proyecto/src/pages/inicio_usuario.dart';
import 'package:proyecto/src/pages/menu_izquierdo.dart';
import 'package:proyecto/src/pages/provider_menu.dart';
import 'package:proyecto/src/providers/providers.dart';
import 'package:url_launcher/url_launcher.dart';

class InicioProveedor extends StatelessWidget {
  //_mostrarAlert2(context);
  /*InicioProveedor(
    {
      _mostrarAlert2(context)
    }
  );*/
  final usuarioProvider = new UsuarioProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Colors.lightBlueAccent,
        
      ),
      
      drawer: CrearMenu2(),
      body: Padding(
        padding: const EdgeInsets.only(left: 0.0, right: 0.0),
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
                    children: [
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _imgGenerator('assets/img/contratos.png'),
                          _buttonGenerator('Mis Contratos', '', context,(){})
                        ],
                      ),
                      SizedBox(width: 5.0,),
                      Column(
                        children: [
                          _imgGenerator('assets/img/historial.png'),
                          _buttonGenerator('Historial', '', context,(){})
                        ],
                      )
                    ],
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          _imgGenerator('assets/img/contacto.png'),
                          _buttonGenerator('Contáctanos', '', context,()=>_launchURL())
                        ],
                      ),
                      SizedBox(width: 5.0,),
                      Column(
                        children: [
                          _imgGenerator('assets/img/aboutUs.png'),
                          _buttonGenerator('Acerca de', '', context,()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>AboutUsPage()))})
                        ],
                      ),
                      
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
    child: Text(cat),);
}

_launchURL(){
  launch('https://wa.me/50767259555');
}
  void _mostrarAlert2(BuildContext context){
    print('************************************');
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Información Enviada'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:<Widget> [
              Icon(Icons.check_circle_outline_sharp,size: 60.0,color: Colors.green,),
              Text('En breve te enviaremos un correo electrónico confirmando tu suscripción',textAlign: TextAlign.center,),
              //FlutterLogo(size:100.0)
              
            ],
          ),
          actions: <Widget>[
            FlatButton(onPressed: ()=>{Navigator.of(context).pop()}, child: Text('Entendido'),)
          ],
        );
      }
    );

  }
/*_launchURL() async {
  const url = 'https://wa.me/50763631014';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}*/
}
