import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

import 'package:proyecto/utilities/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
 
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: (){},
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
              color: Colors.lightBlue,
              ),
            ),
            Container(
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 40.0,),
                child: Column(
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
                    SizedBox(height: 30.0,),
                    _buildEmail(),
                    SizedBox(height: 30.0),
                    _buildPassword(),
                    _buildForgotPassword(),
                    _buildRememberMeCheckbox(),
                    _buildLoginBtn(),
                    _buildSignInWithText(),
                    _buildSocialBtn(),
                  ],
                ),
              ),
          ],
        ),
      ),
    ),
  );
}


  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Text('Correo Electrónico', 
        style: kLabelStyle, ),
       
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color:Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.email, color: Colors.white),
            hintText: 'Introduzca su correo electrónico o usuario',
            hintStyle: kHintTextStyle,
            ),
          ),
          
        )],
    );
  }

Widget _buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Contraseña', style: kLabelStyle,),
      SizedBox(height: 10.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60.0,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color:Colors.white,
            fontFamily: 'OpenSans'
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(Icons.lock, color: Colors.white,),
            hintText: 'Introduzca su contraseña',
            hintStyle: kHintTextStyle
          ),
        ),
      )
    ],
  );
}

Widget _buildForgotPassword(){
   return Container(
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

Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
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
        SizedBox(height: 20.0),
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

  );
}

}



