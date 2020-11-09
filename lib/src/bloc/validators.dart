import 'dart:async';



class Validators {


  final validarEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: ( email, sink ) {


      Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regExp   = new RegExp(pattern);

      if ( regExp.hasMatch( email ) ) {
        sink.add( email );
      } else {
        sink.addError('Email no es correcto');
      }

    }
  );


  final validarPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: ( password, sink ) {

      if ( password.length >= 6 ) {
        sink.add( password );
      } else {
        sink.addError('Más de 6 caracteres por favor');
      }

    }
  );

  final validarNombre = StreamTransformer<String, String>.fromHandlers(
    handleData: ( name, sink ) {

      if ( name!=null) {
        sink.add( name );
      } else {
        sink.addError('Debes colocar un nombre');
      }

    }
  );

  final validarTel = StreamTransformer<String, String>.fromHandlers(
    handleData: ( tel, sink ) {


      Pattern pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
      RegExp regExp   = new RegExp(pattern);

      if ( regExp.hasMatch( tel ) ) {
        sink.add( tel );
      } else {
        sink.addError('Introduce números');
      }

    }
  );

  final  validarServicio = StreamTransformer<String, String>.fromHandlers(
    handleData: ( name, sink ) {

      if ( name!='Seleccionar Categoría de desempeño') {
        sink.add( name );
      } else {
        sink.addError('Elige una Categoría');
      }

    }
  );
  final validarDescrip = StreamTransformer<String, String>.fromHandlers(
    handleData: ( name, sink ) {

      if ( name!=null) {
        sink.add( name );
      } else {
        sink.addError('Describe tu trabajo');
      }

    }
  );

}