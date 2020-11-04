import 'package:flutter/material.dart';
import 'package:proyecto/P_registro/containers.dart';


class RegisBoxtitle extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RegisBoxtitle({
    Key key, this.hintText, this.onChanged, InputDecoration decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginBox
    (
        
        child: TextField(
          onChanged:onChanged,
          decoration: InputDecoration
          (
            hintText: hintText ,
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
