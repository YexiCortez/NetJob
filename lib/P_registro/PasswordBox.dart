import 'package:flutter/material.dart';
import 'package:proyecto/P_registro/containers.dart';
class PasswordBox extends StatelessWidget {
  final ValueChanged<String> onChange;
  const PasswordBox({
    Key key, this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginBox(
      child: TextField
      (
        obscureText: true,
        decoration: InputDecoration
        (
          hintText: "Contraseña" ,
          hintStyle: TextStyle
          (color: Colors.grey.withOpacity(0.7)
          ),
          enabledBorder:InputBorder.none,
          focusedBorder:InputBorder.none,
        )
      ),

    );
  }
}