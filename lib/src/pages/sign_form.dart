import 'dart:io';

import 'package:commons/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:proyecto/src/pages/P_inicio.dart';
import 'package:proyecto/src/pages/provider_home.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  File foto;
  String _nombre=' ';
  String _email;
  String _fecha;

  String _opcionSeleccionada = 'Seleccionar Categoría de desempeño';
  String _opcionSeleccionada2 = 'Seleccionar Nivel de Experiencia';


  List<String> _opciones = ['Seleccionar Categoría de desempeño','Ayuda con Mudanza','Compras','Entregas a domicilio','Jardinería','Limpieza','Levantamiento de Objetos pesados','Reparaciones'];
  List<String> _opciones2 = ['Seleccionar Nivel de Experiencia','Menos de 1 año','2 - 3 años','Más de 4 años',];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar empresa o negocio'),
      ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:10.0, vertical:20.0),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(3.0),
            child:  _mostrarFoto()
          ),
         // _crearFotoPerfil(),
         Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
              Text('Establece una foto de perfil!'),
              SizedBox(width: 70.0,),
              IconButton(
                icon: Icon(Icons.photo_size_select_actual),
                onPressed:_seleccionarFoto,
                highlightColor: Colors.black,
              ),
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed:_tomarFoto,
              ),
           ],
         ),
         
          Divider(),
          _crearInput(),
          Divider(),
          _crearInput2('Habilidades','Separadas por coma'),
          Divider(),
          _crearInput2('Idiomas que Hablas','Separados por coma'),
          Divider(),
          _crearInput2('Ciudad y Provincia donde ofreces servicio','Ejemplo: David, Chiriquí'),
          Divider(),
          _crearInput2('Teléfono de contacto','Solo el número'),
          Divider(),
         _crearDropDown(_opcionSeleccionada,_opciones),
          Divider(),
          _crearDropDown2(_opcionSeleccionada2,_opciones2),
          Divider(),
          _crearEmail(),
          Divider(),
          SizedBox(
            height: 150.0,
            child:Expanded(
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Descripción de la empresa'
                ),
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
              ),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              FlatButton(
                padding:EdgeInsets.symmetric(horizontal: 40.0,vertical: 15),
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
                color: Colors.lightBlueAccent,
                onPressed:()=> _mostrarAlert(context),//()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InicioScreen()))},
                child: Text("Cancelar"),),

                SizedBox(width:30,),
              //cambiop
              RaisedButton(
                padding:EdgeInsets.symmetric(horizontal: 40.0,vertical: 15),
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
                color: Colors.black,
                onPressed: ()=>_mostrarAlert2(context),
                textColor: Colors.white,
                child: Text("Confirmar"))
            ],
          ),
          //_crearPersona(),

        ],
      ),
    );
  }

  Widget _crearInput(){

    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Nombre de la empresa/negocio',
        labelText: 'Nombre de la empresa' ,
        helperText: 'Puede utilizar su nombre de pila',
        suffixIcon: Icon(Icons.business_center),
        //icon: Icon(Icons.account_circle),
        ),
    );

  }
  
  Widget _crearInput2(String labelT,String helperT){

    return TextField(
      
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        //hintText: 'Nombre de la empresa/negocio',
        labelText: labelT ,
        helperText: helperT,
        //suffixIcon: Icon(Icons.business_center),
        //icon: Icon(Icons.account_circle),
        ),
    );

  }

  Widget _crearEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Email',
        labelText: 'Email' ,
        suffixIcon: Icon(Icons.alternate_email),
        //icon: Icon(Icons.email),
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;

        });
      },
    );
  }

List<DropdownMenuItem<String>> getOpcionesDropDown(){
  List<DropdownMenuItem<String>> lista = new List();

  _opciones.forEach((opcion) { 
    lista.add(DropdownMenuItem(
      child: Text(opcion),
      value: opcion,
    ));
  });

  return lista;
}
List<DropdownMenuItem<String>> getOpcionesDropDown2(){
  List<DropdownMenuItem<String>> lista = new List();

  _opciones2.forEach((opcion) { 
    lista.add(DropdownMenuItem(
      child: Text(opcion),
      value: opcion,
    ));
  });

  return lista;
}

Widget _crearDropDown(String _op, List<String> _lst){

  return Row(
    children: <Widget>[
      //Icon(Icons.settings),
      SizedBox(width: 30.0),
      Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropDown(), 
            onChanged: (opt){
              setState((){
                _opcionSeleccionada=opt;
                //print(_op);
              });
            },
          ),
      )
    ],
  );

}

Widget _crearDropDown2(String _op, List<String> _lst){

  return Row(
    children: <Widget>[
      //Icon(Icons.settings),
      SizedBox(width: 30.0),
      Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada2,
            items: getOpcionesDropDown2(), 
            onChanged: (opt){
              setState((){
                _opcionSeleccionada2=opt;
                //print(_op);
              });
            },
          ),
      )
    ],
  );

}
 
Widget _crearFotoPerfil(){

    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),)
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.network('https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.clker.com%2Fclipart-no-image-icon.html&psig=AOvVaw08GXkRIR8vAAlBlf-nbHNu&ust=1604799096465000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJiTuNWk7-wCFQAAAAAdAAAAABAD'),
        ),
    );

  }

_tomarFoto()async{
  foto = await ImagePicker.pickImage(
    source:ImageSource.camera
  );
  setState(() {});
}

_seleccionarFoto() async{
  foto = await ImagePicker.pickImage(
    source:ImageSource.gallery
  );
  setState(() {});
}

Widget _mostrarFoto() {

  if (foto!=null) {
    return CircleAvatar(
              backgroundImage: FileImage(foto),
              radius: 75.0,
              backgroundColor:Colors.transparent ,
            );
  } else {
    return CircleAvatar(
        
        backgroundImage: 
        AssetImage('assets/img/no-pic.png'),
        radius: 75.0,
        //height: 300.0,
       // fit: BoxFit.cover,

      );
  }
      
  }

_procesarImagen( ImageSource origen ) async {

  foto = await ImagePicker.pickImage(
    source: origen
  );

  /*if ( foto != null ) {
    producto.fotoUrl = null;
  }*/

  setState(() {});

}
 
void _mostrarAlert(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Cancelar formulario'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:<Widget> [
              Text('¿Seguro quieres cancelar? se perderan los datos'),
              FlutterLogo(size:100.0)
            ],
          ),
          actions: <Widget>[
            FlatButton(onPressed: ()=>Navigator.of(context).pop(), child: Text('Quedarme aquí')),
            FlatButton(onPressed: ()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InicioScreen()))}, child: Text('Quiero Cancelar'))
          ],
        );
      }
    );

  }

void _mostrarAlert2(BuildContext context){

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
            FlatButton(onPressed: ()=>{Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InicioProveedor()))}, child: Text('Entendido'),)
          ],
        );
      }
    );

  }


}