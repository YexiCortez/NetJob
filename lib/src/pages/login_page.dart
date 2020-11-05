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
    resizeToAvoidBottomPadding: false,
    body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
              color: Colors.lightBlue,
              ),
            ),
              Stack(
                children: [
                  _builImgFondo(),
                  Positioned(
                    top: 135.0,
                    left: 120.0,
                    child: _buildAppLogo(),), 
                    Container(  
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 40.0,),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 320.0)),
                            Text(
                              'Inicia Sesión',
                                style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            _buildEmail(),
                            SizedBox(height: 10.0),
                            _buildPassword(),
                            _buildForgotPassword(),
                            _buildRememberMeCheckbox(),
                            _buildLoginBtn(),
                            _buildSignInWithText(),
                            _buildSocialBtnRow(),
                            _buildSignupBtn()
                          ],
                        ),
                      ),
                ],
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
          height: 40.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color:Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 8.0),
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
        height: 40.0,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color:Colors.white,
            fontFamily: 'OpenSans'
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8.0),
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
      
      onTap: ()=> print('Sign Up Button Pressed'),
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



