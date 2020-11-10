import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';



class RateScreen extends StatelessWidget {
  double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(title:Text('')),
      body: Column(
        
        children: <Widget>[
          Container(
          margin: EdgeInsets.fromLTRB(50,40,20,20),
          padding: EdgeInsets.all(9), 
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
                  Radius.circular(40)
                ),
            )
          ),
          //estrellas
          Container(
            margin: EdgeInsets.fromLTRB(25,5, 0, 20),
            child:SmoothStarRating
            (
            color: Colors.yellow,
            borderColor:Colors.grey[350],
            allowHalfRating: true,
            isReadOnly: false,
            size: 60,
            starCount: 5,
            spacing: 2.0,
            rating: rating,
            onRated:(value)
            {
              rating=value;
              print("Rating is: $rating" );
            },
            )
          ),
          
          Container(
          margin: EdgeInsets.fromLTRB(50,25,20,20),
          padding: EdgeInsets.all(2), 
          child: Text(
            'Dejános tu Comentario',
            style: TextStyle(
              fontSize: 23,
            )),
            decoration: BoxDecoration
            (
              color: Colors.lightBlue,
              border:Border.all
              (
                color: Colors.lightBlue,
                width: 5,
              ),
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width - 50 ,
            margin:EdgeInsets.fromLTRB(10, 10, 0, 5),
            child:TextFormField
            (
              maxLines: 10,
            decoration: InputDecoration(
              hintText: 'Dejános tu comentario aquí ...',
              hintStyle: TextStyle(
                fontSize: 15, 
              ),
              
              border: OutlineInputBorder(),
              
            ),
            
            
            ),
            decoration: BoxDecoration
            (
              border:Border.all
              (
                color: Colors.lightBlue,
                width: 5,
              ),
            )
          ),
          Container(
          
          child: Text('Tus comentarios hacen que nuestra comunidad de Proveedores mejore',
         // textStyle
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
          )
          )
        ],
      ),

    );
  }
}