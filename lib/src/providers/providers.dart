
import 'dart:convert';
import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto/src/models/persona_model.dart';
import 'package:mime_type/mime_type.dart';


class DatosProvider{

  final String _url= 'https://netjobdb.firebaseio.com';

  Future<bool> crearPersona(PersonaModel persona) async {

    final url='$_url/persona.json';

    final resp = await http.post( url , body: productoModelToJson(persona));

    final decodedData = json.decode(resp.body);

    print(decodedData);

    return true;

  }
  Future<bool> editarProducto( PersonaModel producto ) async {
    
    final url = '$_url/persona/${ producto.id }.json';

    final resp = await http.put( url, body: productoModelToJson(producto) );

    final decodedData = json.decode(resp.body);

    print( decodedData );

    return true;

  }

  
  Future<String> subirImagen( File imagen ) async {

    final url = Uri.parse('https://api.cloudinary.com/v1_1/dc0tufkzf/image/upload?upload_preset=cwye3brj');
    final mimeType = mime(imagen.path).split('/'); //image/jpeg

    final imageUploadRequest = http.MultipartRequest(
      'POST',
      url
    );

    final file = await http.MultipartFile.fromPath(
      'file', 
      imagen.path,
      contentType: MediaType( mimeType[0], mimeType[1] )
    );

    imageUploadRequest.files.add(file);


    final streamResponse = await imageUploadRequest.send();
    final resp = await http.Response.fromStream(streamResponse);

    if ( resp.statusCode != 200 && resp.statusCode != 201 ) {
      print('Algo salio mal');
      print( resp.body );
      return null;
    }

    final respData = json.decode(resp.body);
    print( respData);

    return respData['secure_url'];


  }


}