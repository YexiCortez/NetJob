
import 'dart:convert';
import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto/src/models/persona_model.dart';
import 'package:mime_type/mime_type.dart';
import 'package:proyecto/src/preferencias_usuario/preferencias_usuario.dart';


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

class UsuarioProvider{

  final String _fireBaseToken = 'AIzaSyDX1BWv70W8g0PDHS72EH1Z2iFujanC1qg';
  final _prefs= new PreferenciasUsuario();

  Future<Map<String,dynamic>> login(String email, String password) async{

    final authData={
      'email':email,
      'password': password,
      'returnSecureToken':true
    };

    final resp=await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_fireBaseToken'
      ,body: json.encode(authData)
    );

    Map<String,dynamic> decodedResp=json.decode(resp.body);

    print(decodedResp);
    if(decodedResp.containsKey('idToken')){
      _prefs.token = decodedResp['idToken'];
      return{'ok':true,'token':decodedResp['idToken']};
    }else{
      return{'ok':false,'token':decodedResp['error']['message']};
    }

  }

  Future<Map<String,dynamic>> nuevoUsuario(String email, String password) async{

    final authData={
      'email':email,
      'password': password,
      'returnSecureToken':true
    };

    final resp=await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_fireBaseToken'
      ,body: json.encode(authData)
    );

    Map<String,dynamic> decodedResp=json.decode(resp.body);

    print(decodedResp);
    if(decodedResp.containsKey('idToken')){
      _prefs.token = decodedResp['idToken'];
      return{'ok':true,'token':decodedResp['idToken']};
    }else{
      return{'ok':false,'token':decodedResp['error']['message']};
    }

  }

}