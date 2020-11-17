import 'package:flutter/material.dart';
import 'package:proyecto/src/bloc/login_bloc.dart';

class CatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorías',textAlign: TextAlign.right,),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
          children: [
          //Text('Mover Objetos Pesados', textScaleFactor: 1.3,),
          _crearCat('https://res.cloudinary.com/dfwt7u6gx/image/upload/v1605568129/s3prr68r73fvkicqvf11.jpg','Mover Objetos Pesados' ),
          //Divider(),
          //Text('Jardinería', textScaleFactor: 1.3,),
          _crearCat('https://res.cloudinary.com/dfwt7u6gx/image/upload/v1605569322/nmk4zg7gtn8ops6czab4.jpg','Jardinería' ),
          //Divider(),
         //Text('Reparaciones', textScaleFactor: 1.3,),
          _crearCat('https://res.cloudinary.com/dfwt7u6gx/image/upload/v1605570560/qgzhq4gtyvrcuz5lzdpy.jpg','Reparaciones' ),
          //Divider(),
          //Text('Compras', textScaleFactor: 1.3,),
          _crearCat('https://res.cloudinary.com/dfwt7u6gx/image/upload/v1605570918/xm5wyicu6kjtcweo12ex.jpg','Compras' ),
          //Divider(),
          //Text('Limpieza', textScaleFactor: 1.3,),
          _crearCat('https://res.cloudinary.com/dfwt7u6gx/image/upload/v1605570659/lvt7gdfkhqoxxsfigbww.png', 'Limpieza'),
          //Divider(),
          //Text('Entregas a domicilio', textScaleFactor: 1.3,),
          _crearCat('https://res.cloudinary.com/dfwt7u6gx/image/upload/v1605570817/t0ykoqehtyjclweskhbv.jpg','Entregas a domicilio' ),
          //Divider(),

          ],
          padding: EdgeInsets.symmetric(horizontal:10, vertical:15),

          
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        ),
        //backgroundColor: Colors.cyan[00],
      
    );
  }

  Widget _crearCat(String img, String titulo ){
    return  GestureDetector(
     //onTap: ,
      child:Card(
        margin: EdgeInsets.symmetric(vertical:10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            FadeInImage(placeholder: AssetImage('assets/img/jar-loading.gif'), image:NetworkImage(img),fit: BoxFit.cover,height: 250,),
            ListTile(
            title: Text('${ titulo }'),
            tileColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            
            //subtitle: Text( producto.id ),
            //onTap: () => Navigator.pushNamed(context, 'producto', arguments: producto ),
            ),

          ],
          ),
        elevation: 3,
        /*height: 200,
        width: 250,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
          border: Border.all()
        ),*/
        
      ),
    );
  }

  _irAProv(){

  }
}