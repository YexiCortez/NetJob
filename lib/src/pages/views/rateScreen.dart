import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';



class RateScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(title:Text('')),
      body: Column(
        
        children: <Widget>[
          Container(
          margin: EdgeInsets.fromLTRB(60,40,20,20),
          padding: EdgeInsets.all(10), 
          child: Text(
            'Califica el Servicio',
            style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
            decoration: BoxDecoration
            (
              border:Border.all
              (
                color: Colors.lightBlue,
                width: 5,
              ),
              borderRadius: BorderRadius.all
                (
                  Radius.circular(5.0)
                ),
            )
          ),
          Container
          (
            margin: EdgeInsets.fromLTRB(50,0, 0, 20),
            child:SmoothStarRating
            (
            color: Colors.yellow,
            borderColor:Colors.grey[350],
            allowHalfRating: false,
            isReadOnly: true,
            size: 60,
            )
          )
          
        ],
      ),

    );
  }
}