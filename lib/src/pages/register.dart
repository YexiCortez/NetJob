


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:commons/commons.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:proyecto/src/bloc/login_bloc.dart';
import 'package:proyecto/src/bloc/provider.dart';
import 'package:proyecto/src/models/persona_model.dart';
import 'package:proyecto/src/providers/providers.dart';

class RegistroForm extends StatefulWidget {
  @override
  _RegistroFormState createState() => _RegistroFormState();
}

class _RegistroFormState extends State<RegistroForm> {
  
  final formKey       = GlobalKey<FormState>();
  final scaffoldKey   = GlobalKey<ScaffoldState>();
  final datosProvider = new DatosProvider();
  final usuarioProvider = new UsuarioProvider();

  PersonaModel persona = new PersonaModel();
  bool _guardando = false;
  File foto;
  
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    final PersonaModel perData = ModalRoute.of(context).settings.arguments;
    if( perData != null){
      persona = perData;
    }

    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal:20),
          child: Form(
            key: formKey,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            SizedBox(height: 100,),
            _mostrarFoto(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Establece una foto de perfil!'),
                SizedBox(width: 50.0,),
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
            _crearNombre(),
            SizedBox(height: 10,),
            _crearContra(bloc),
            SizedBox(height: 10,),
            _crearEmail(bloc),
            SizedBox(height: 10,),
            _crearEmail2(),
            Container
              (
                height:60,
                margin:EdgeInsets.fromLTRB (10,30,10,40),
                child: Row
                (
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const <Widget>[
                      Image(image:AssetImage('assets/img/facebook.png')),
                      Image(image:AssetImage('assets/img/google-mas.png')),
                      Image(image:AssetImage('assets/img/linkedin.png')),
                    ],
                )
              ),
            _crearBoton(bloc)
          ],) ,
          )
        ),
      ),
      
    );
  }

  Widget _crearNombre() {

    return TextFormField(
      initialValue: persona.nombre,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Nombre de Usuario',
         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
      onSaved: (value) => persona.nombre = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'Ingrese el nombre del producto';
        } else {
          return null;
        }
      },
    );

  }
  
  Widget _crearContra(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream ,
      //initialData: initialData ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return TextFormField(
          obscureText: true,
          //initialValue: persona.psswd,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            counterText: snapshot.data,
            errorText: snapshot.error,
            labelText: 'Contraseña',
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          onSaved: (value) => persona.psswd = value,
          onChanged: (value)=>bloc.changePassword(value),
          /*validator: (value) {
            if ( value.length < 3 ) {
              return 'Ingrese una contraseña';
            } else {
              return null;
            }
          },*/
        );

      },
    );
    
  }

  Widget _crearEmail(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream,
      //initialData: initialData ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
          return TextFormField(
            keyboardType: TextInputType.emailAddress,
            //initialValue: persona.email,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              counterText: snapshot.data,
              errorText: snapshot.error,
              labelText: 'Ingresa tu Correo Electrónico',
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            onChanged: (value)=>bloc.changeEmail(value),
            //onSaved: (value) => persona.email = value,
            /*validator: (value) {
              if ( value.length < 3 ) {
                return 'Ingresa tu Correo Electrónico';
              } else {
                return null;
              }
            },¨*/
      );
      },
    );

    

  }
   Widget _crearEmail2() {

    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Confirma tu Correo Electrónico',
         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
      //onSaved: (value) => persona.email = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'Confirma tu Correo Electrónico';
        } else {
          return null;
        }
      },
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
        AssetImage('assets/img/logo.png'),
        radius: 75.0,
        //height: 300.0,
       // fit: BoxFit.cover,

      );
  }
      
  }
  Widget _crearBoton(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.formValidStream ,
      //initialData: initialData ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton.icon(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
          ),
          color: Colors.lightBlue,
          textColor: Colors.white,
          label: Text('Registrarme'),
          
          icon: Icon( Icons.check_circle ),
          onPressed: snapshot.hasData? ()=> _register(bloc, context):null/*( _guardando ) ? null : _submit*/,
        );
      },
    );
    
  }
  _register(LoginBloc bloc, BuildContext context){
    usuarioProvider.nuevoUsuario(bloc.email, bloc.password);
  }

  void _submit() //async {
    {
    

    if ( !formKey.currentState.validate() ) return;

    formKey.currentState.save();
    
    datosProvider.crearPersona(persona);/*

    setState(() {_guardando = true; });

    if ( foto != null ) {
      persona.fotoUrl = await datosProvider.subirImagen(foto);
    }



    if ( persona.id == null ) {
      datosProvider.crearPersona(persona);
    } else {
      datosProvider.editarProducto(persona);
    }


    // setState(() {_guardando = false; });
    mostrarSnackbar('Registro guardado');
*/
    Navigator.pop(context);

  }
  void mostrarSnackbar(String mensaje) {

    final snackbar = SnackBar(
      content: Text( mensaje ),
      duration: Duration( milliseconds: 1500),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);

  }


}