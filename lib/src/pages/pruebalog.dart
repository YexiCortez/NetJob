import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto/src/bloc/provider.dart';
import 'package:proyecto/src/models/persona_model.dart';
import 'package:proyecto/src/pages/register.dart';
import 'package:proyecto/src/pages/transicion_inicio.dart';
import 'package:proyecto/src/providers/providers.dart';
import 'dart:ui';

import 'package:proyecto/utilities/constants.dart';
import 'package:proyecto/utilities/utils.dart';

class LoginPag extends StatefulWidget {
  @override
  _LoginPagState createState() => _LoginPagState();
}

class _LoginPagState extends State<LoginPag> {
  bool _rememberMe = false;
  final usuarioProvider= new UsuarioProvider();
@override
Widget build(BuildContext context) {
  
  final bloc = Provider.of(context);
  return Scaffold(
    backgroundColor: Colors.lightBlue,
    resizeToAvoidBottomInset: false,
    
    body: ListView(
      //padding: EdgeInsets.symmetric(horizontal:10.0,),
      children: [
        Stack(
            children: 
            [
            _builImgFondo(), 
            Center(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  SizedBox(height: 100.0,),
                  CircleAvatar(
                        backgroundImage: AssetImage('assets/img/logo.png'),
                        radius: 85.0,
                        
                      ),
                  //_buildAppLogo()
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 280.0)),
                Text(
                  'Inicia Sesión',
                  style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0,),
                _buildEmail(bloc),
                SizedBox(height: 10.0),
                _buildPassword(bloc),
                SizedBox(height: 10.0),
                _buildForgotPassword(),
                _buildRememberMeCheckbox(),
                _buildLoginBtn(bloc),
                _buildSignInWithText(),
                _buildSocialBtnRow(),
                _buildSignupBtn(),
              ],
            ),
            ]
        ),
      ],
      ),
  );
}


  Widget _buildEmail(LoginBloc bloc) {

    return StreamBuilder(
      //initialData: snapshot.data,
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
      return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Container(

            //height: 40.0,
            alignment: Alignment.centerLeft,
            child: TextField(
              controller: TextEditingController(text: snapshot.data),
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color:Colors.white,
                fontFamily: 'OpenSans',
                
              ),
              decoration: InputDecoration(
                
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
                contentPadding: EdgeInsets.only(top: 8.0),
                prefixIcon: Icon(Icons.email, color: Colors.white),
                filled: true,
                fillColor: Color(0xFF6CA8F1),
                hintText: 'Correo electrónico o usuario',
                hintStyle: kHintTextStyle,
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged:(value)=>bloc.changeEmail(value) ,
            ),
            
          )],
      ),
    );
    });
    
  }

Widget _buildPassword(LoginBloc bloc){

  return StreamBuilder(
    //initialData: bloc.passwordStream,
    stream: bloc.passwordStream,
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return SizedBox(
    width: 300,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: TextFormField(
            initialValue: snapshot.data,
            //controller: TextEditingController(text: snapshot.data),
            obscureText: true,
            style: TextStyle(
              color:Colors.white,
              fontFamily: 'OpenSans'
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
              filled: true,
              fillColor: Color(0xFF6CA8F1),
              contentPadding: EdgeInsets.only(top: 8.0),
              prefixIcon: Icon(Icons.lock, color: Colors.white,),
              hintText: 'Introduzca su contraseña',
              hintStyle: kHintTextStyle,
              //counterText: snapshot.data,
              errorText: snapshot.error,
            ),
            onChanged: (value)=>bloc.changePassword(value),
          ),
        )
      ],
    ),
  );
    });

  
}

Widget _buildForgotPassword(){
   return Container(
     padding: EdgeInsets.only(right:30),
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {},
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          '¿Olvidó su contraseña?',
          style: kLabelStyle,
        ),
      ),
    );
}

Widget _buildRememberMeCheckbox(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal:30),
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Recordar la contraseña',
            style: kLabelStyle,
          ),
        ],
      ),
    );
}

Widget _buildLoginBtn(LoginBloc bloc) {
  return StreamBuilder(
    stream: bloc.formValidStream ,
    //initialData: initialData ,
    builder: (BuildContext context, AsyncSnapshot snapshot){
       return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed:snapshot.hasData ? ()=> _login(bloc,context):null , //=> print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
    },
  );
   
   
  }

  _login(LoginBloc bloc, BuildContext context, /*PersonaModel persona*/)async{
    
    Map info = await usuarioProvider.login(bloc.email, bloc.password);
    if(info['ok']){
      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>HomePage()));
      Navigator.pushNamed(context, 'escoger'/*,arguments: persona*/);
    }
    else{
      mostrarAlerta(context,info['mensaje']);
    }
    //Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>HomePage()));
  }

Widget _buildSignInWithText(){
  return Column(
      children: <Widget>[
        Text(
          '- O -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'Inicia sesión con',
          style: kLabelStyle,
        ),
      ],
    );
}


Widget _buildSocialBtn(Function onTap, AssetImage logo){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0,2),
            blurRadius: 6.0
          ),
        ],
        image: DecorationImage(image: logo)
      ),
    ),
  );
}

Widget _buildSocialBtnRow() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocialBtn(
        (){}, 
        AssetImage('assets/img/facebook.png'
        ),
      ),
        _buildSocialBtn(
          (){},
          AssetImage('assets/img/google.jpg')),
        _buildSocialBtn(
          (){},
          AssetImage('assets/img/linkedin.png')), 
    ],
    ),

  );
}


Widget _buildSignupBtn() {
    return GestureDetector(
      
      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(context)=>RegistroForm()));},
      
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '¿No tiene una cuenta? ',
              
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                
              ),
            ),
            TextSpan(

              text: 'Registrese',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        
      ),
      
    );
    
  }




Widget _builImgFondo(){
  return Image(
    width: double.nan,
    
    image: AssetImage('assets/img/FondoInicio.png'),
    
  );
}


Widget _buildAppLogo(){
  return Container(
    width: 175.0,
    height: 175.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/img/Netjob-logoicono.png')),
      shape: BoxShape.circle,
    ),
  );
}


}
