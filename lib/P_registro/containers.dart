import 'package:flutter/material.dart';


class LoginBox extends StatelessWidget 
{
  final Widget child;
  const LoginBox({
    Key key,
    this.child,
  }) : super (key :key);

  @override
  Widget build(BuildContext context)
  {
    
    return Container
    ( 
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical:10),
      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
      height: 54,
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius:  BorderRadius.circular(20),
        border:Border.all
        (
          color: Colors.lightBlueAccent, width: 4,
        ),
      ),
      child:child,
      
      
    );
  }
}
