import 'dart:async';
import 'package:proyecto/src/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators {


  final _emailController    = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _nameController    = BehaviorSubject<String>();
  //final _telController    = BehaviorSubject<String>();
  final _serviceController    = BehaviorSubject<String>();
  final _descripcionController    = BehaviorSubject<String>();
  

  // Recuperar los datos del Stream
  Stream<String> get emailStream    => _emailController.stream.transform( validarEmail );
  Stream<String> get passwordStream => _passwordController.stream.transform( validarPassword );
  Stream<String> get nameStream => _nameController.stream.transform( validarNombre );
  //Stream<String> get telStream => _telController.stream.transform( validarTel );
  Stream<String> get serviceStream => _serviceController.stream.transform( validarServicio );
  Stream<String> get descripcionStream => _descripcionController.stream.transform( validarDescrip );
  //Stream<String> get nameStream => _nameController.stream.transform( validarNombre );

  Stream<bool> get formValidStream => 
      Observable.combineLatest2(emailStream, passwordStream, (e, p) => true );

  Stream<bool> get form2ValidStream => 
      Observable.combineLatest4(emailStream, nameStream ,serviceStream,descripcionStream, (e, p,s,d,) => true );

  // Insertar valores al Stream 
  Function(String) get changeEmail    => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeName    => _nameController.sink.add;
  Function(String) get changeService    => _serviceController.sink.add;
  Function(String) get changeDesc    => _descripcionController.sink.add;

  // Obtener el último valor ingresado a los streams
  String get email    => _emailController.value;
  String get password => _passwordController.value;
  String get name => _nameController.value;
  //String get tel => _telController.value;
  String get service => _serviceController.value;
  String get descripcion => _descripcionController.value;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
    _nameController?.close();
    //_telController?.close();
    _serviceController?.close();
    _descripcionController?.close();
  }

}