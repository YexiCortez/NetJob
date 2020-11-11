import 'dart:async';
import 'package:proyecto/src/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators {


  final _emailController    = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();//distinto
  final _nameController    = BehaviorSubject<String>();
  final _telController    = BehaviorSubject<String>();
  final _idiomasController    = BehaviorSubject<String>();
  final _habilController    = BehaviorSubject<String>();
  final _ciudadController    = BehaviorSubject<String>();
  final _expController    = BehaviorSubject<String>();
  final _serviceController    = BehaviorSubject<String>();
  final _descripcionController    = BehaviorSubject<String>();
  

  // Recuperar los datos del Stream
  Stream<String> get emailStream    => _emailController.stream.transform( validarEmail );
  Stream<String> get passwordStream => _passwordController.stream.transform( validarPassword );
  Stream<String> get nameStream => _nameController.stream.transform( validarNombre );
  Stream<String> get telStream => _telController.stream.transform( validarTel );
  Stream<String> get serviceStream => _serviceController.stream;
  Stream<String> get descripcionStream => _descripcionController.stream.transform( validarDescrip );
  Stream<String> get idiomasStream => _idiomasController.stream.transform( validarNombre );
  Stream<String> get habilStream => _habilController.stream.transform( validarNombre );
  Stream<String> get ciudadStream => _ciudadController.stream.transform( validarNombre );
  Stream<String> get expStream => _expController.stream;




  Stream<bool> get formValidStream => 
      Observable.combineLatest2(emailStream, passwordStream, (e, p) => true );

  Stream<bool> get form2ValidStream => 
      Observable.combineLatest3(emailStream, nameStream ,descripcionStream, (e, p,d,) => true );

  // Insertar valores al Stream 
  Function(String) get changeEmail    => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeName    => _nameController.sink.add;
  Function(String) get changeService    => _serviceController.sink.add;
  Function(String) get changeDesc    => _descripcionController.sink.add;
  Function(String) get changeTel    => _telController.sink.add;
  Function(String) get changeIdiomas    => _idiomasController.sink.add;
  Function(String) get changeHabil    => _habilController.sink.add;
  Function(String) get changeCiudad    => _ciudadController.sink.add;
  Function(String) get changeExp    => _expController.sink.add;

  // Obtener el último valor ingresado a los streams
  String get email    => _emailController.value;
  String get password => _passwordController.value;
  String get name => _nameController.value;
  //String get tel => _telController.value;
  String get service => _serviceController.value;
  String get descripcion => _descripcionController.value;
  String get tel => _telController.value;
  String get idiomas => _idiomasController.value;
  String get habil => _habilController.value;
  String get ciudad => _ciudadController.value;
  String get exp => _expController.value;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
    _nameController?.close();
    //_telController?.close();
    _serviceController?.close();
    _descripcionController?.close();
    _telController?.close();
    _idiomasController?.close();
    _habilController?.close();
    _ciudadController?.close();
    _expController?.close();
  }

}