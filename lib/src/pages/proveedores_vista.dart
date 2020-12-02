import 'package:flutter/material.dart';
import 'package:proyecto/src/models/negocio_model.dart';
import 'package:proyecto/src/providers/providers.dart';
//import '';



class VistaProveedores extends StatefulWidget {
  VistaProveedores({Key key}) : super(key: key);
  
  @override
  _VistaProveedoresState createState() => _VistaProveedoresState();
}

class _VistaProveedoresState extends State<VistaProveedores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.lightBlueAccent,
       ),
       body: _crearListado()
    );
  }
  final negocioProvider = NegocioProvider();
  
  Widget _crearListado() {

    return FutureBuilder(
      future: negocioProvider.cargarProductos(),
      builder: (BuildContext context, AsyncSnapshot<List<NegocioModel>> snapshot) {
        if ( snapshot.hasData ) {

          final negocio = snapshot.data;

          return ListView.builder(
            itemCount: negocio.length,
            itemBuilder: (context, i) => _crearItem(context, negocio[i] ),
          );

        } else {
          return Center( child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _crearItem(BuildContext context, NegocioModel negocio ) {

    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      /*onDismissed: ( direccion ){
        negocioProvider.borrarProducto(producto.id);
      },*/
      child: Card(
        child: Column(
          children: <Widget>[

            ( negocio.fotoUrl == null ) 
              ? Image(image: AssetImage('assets/no-image.png'))
              : FadeInImage(
                image: NetworkImage( negocio.fotoUrl ),
                placeholder: AssetImage('assets/jar-loading.gif'),
                height: 300.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            
            ListTile(
              title: Text('${ negocio.nombreNegocio } - ${ negocio.telefono }'),
              //subtitle: Text( producto.id ),
              onTap: () => Navigator.pushNamed(context, 'negocios', arguments: negocio ),
            ),

          ],
        ),
      )
    );


    

  }


}