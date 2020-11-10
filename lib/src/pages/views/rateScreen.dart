import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main()
{
  runApp(RateScreen());
}

class RateScreen extends StatefulWidget 
{
  RateScreen({Key key}) : super(key: key);

  @override
  _RateScreenState createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> with TickerProviderStateMixin {

  Color _color = Colors.lightBlue;
  double rating = 0.0;
  bool _send =false;
  AnimationController _animationController;
  bool _show = true;
  double _paddingLeft=0.0;
  double _translateY = 0.0;
  double _translateX = 0.0;
  double _rotate = 0.0;
  double _scale = 1.0;
  bool sent = false;
  


@override
void initState(){
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 1300));
    _animationController.addListener(() {
      
      setState(() { 

        _show= false;
        if(_animationController.value >= 0.2 && _animationController.value <=0.4){
          _paddingLeft = 100.0;
          _color=Colors.green;

        }
        else if(_animationController.value >= 0.4 && _animationController.value <=0.5)
        {
          _translateX =140.0;
          _rotate=-20;
          _scale=0.1;
        }
        else if(_animationController.value >= 0.5 && _animationController.value <=0.8)
        {
          _translateY=-20.0;
          //sent=true;
        }
        else if (_animationController.value >= 0.81)
        {
          _send =true;
        }
        
      });
      
    });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(title:Text('')),
      body: Column(
        
        children: <Widget>[
          Container(
          margin: EdgeInsets.fromLTRB(30,40,20,20),
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
            margin: EdgeInsets.fromLTRB(7,5, 0, 20),
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
          margin: EdgeInsets.fromLTRB(30,25,20,20),
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

//cambiar el tamaño del margin al finalizar boton de enviar 

          Container(
          margin:EdgeInsets.fromLTRB(0, 0, 0, 35),
          child: Text('Tus comentarios hacen que nuestra comunidad de Proveedores mejore',
         // textStyle
          style: TextStyle(fontSize: 15,
          fontWeight: FontWeight.bold,),
          textAlign: TextAlign.center,
          
          )
          ),

          Container (
            child: Column(
              children: <Widget>[
                Center(
                  child: GestureDetector(
                    onTap:(){
                      _animationController.forward();
                    },
                    child: AnimatedContainer(
    

                    duration: Duration(milliseconds: 400),
                    padding: EdgeInsets.all(5),
                    curve:Curves.easeOutCubic,
                    decoration : BoxDecoration(
                      color: _color,
                      borderRadius: BorderRadius.circular(100),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget> [

                        !_send?AnimatedContainer(
                          padding: EdgeInsets.only(left: _paddingLeft),
                          duration: Duration(milliseconds: 400),
                          curve: Curves.fastOutSlowIn,
                          transform: Matrix4.translationValues(_translateX,_translateY,0)
                          ..rotateZ(_rotate)
                          ..scale(_scale),
                          child: Icon(Icons.send),
                        ):Container(),                      


                        AnimatedSize(

                          vsync: this,
                          duration: Duration(milliseconds: 600),
                          child: _show?SizedBox(width:10.0):Container(),
                        ),

                        AnimatedSize(

                          vsync: this,
                          duration: Duration(milliseconds: 200),
                          child:_show? Text("Enviar"):Container(),
                        ),

                        AnimatedSize(

                          vsync: this,
                          duration: Duration(milliseconds: 200),
                          child:_send? Icon(Icons.done):Container(),
                        ),
              
                        AnimatedSize(

                          vsync: this,
                          duration: Duration(milliseconds: 200),
                          alignment: Alignment.topLeft,
                          child:_send? SizedBox(width:10.0):Container(),
                        ),
              
                        AnimatedSize(

                          vsync: this,
                          duration: Duration(milliseconds: 200),
                          child:_send? Text("Enviado"):Container(),
                        ),


                        
                      ],
                      ),
                  ),
                  )
                )
              ],

            )
          )
        ],
      ),

    );
  }
}
















