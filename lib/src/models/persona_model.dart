
import 'dart:convert';

import 'package:flutter/cupertino.dart';

PersonaModel productoModelFromJson(String str) => PersonaModel.fromJson(json.decode(str));

String productoModelToJson(PersonaModel data) => json.encode(data.toJson());

class PersonaModel {

    String id;
    String nombre;
    String psswd;
    String email;
    //bool disponible;
    String fotoUrl;
    //Image foto;

    PersonaModel({
        this.id,
        this.nombre = '',
        this.psswd  = '',
        this.email  = '',
        //this.disponible = true,
        this.fotoUrl,
        //this.foto,
    });

    factory PersonaModel.fromJson(Map<String, dynamic> json) => new PersonaModel(
        id         : json["id"],
        nombre     : json["nombre"],
        psswd      : json["psswd"],
        email      : json["email"],
        //disponible : json["disponible"],
        fotoUrl    : json["fotoUrl"],
        //foto       : json["foto"], 
    );

    Map<String, dynamic> toJson() => {
        // "id"         : id,
        "nombre"     : nombre,
        "psswd"      : psswd,
        "email"      : email,
        //"disponible" : disponible,
        "fotoUrl"    : fotoUrl,
        //"foto"       : foto,
    };
}