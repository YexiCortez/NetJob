import 'dart:convert';

import 'package:flutter/cupertino.dart';

NegocioModel negocioModelFromJson(String str) => NegocioModel.fromJson(json.decode(str));

String negocioModelToJson(NegocioModel data) => json.encode(data.toJson());

class NegocioModel {

    String id;
    String nombreNegocio;
    String habilidades;
    String email;
    String idiomas;
    String ciudad;
    String telefono;
    String categoria;
    String exp;
    String descripcion;
    //bool disponible;
    String fotoUrl;
    //Image foto;

    NegocioModel({
        this.id,
        this.nombreNegocio = '',
        this.habilidades  = '',
        this.email  = '',
        this.idiomas = '',
        this.ciudad = '',
        this.telefono = '',
        this.categoria = '',
        this.exp = '',
        this.descripcion = '',
        //this.disponible = true,
        this.fotoUrl,
        //this.foto,
    });

    factory NegocioModel.fromJson(Map<String, dynamic> json) => new NegocioModel(
        id         : json["id"],
        nombreNegocio     : json["nombreNegocio"],
        habilidades      : json["habilidades"],
        email      : json["email"],
        idiomas: json["idiomas"],
        ciudad: json["ciudad"],
        telefono: json["telefono"],
        categoria: json["categoria"],
        exp: json["exp"],
        descripcion: json["descripcion"],
        //disponible : json["disponible"],
        fotoUrl    : json["fotoUrl"],
        //foto       : json["foto"], 
    );

    Map<String, dynamic> toJson() => {
        // "id"         : id,
        "nombreNegocio"     : nombreNegocio,
        "habilidades"      : habilidades,
        "email"      : email,
        "idiomas"    : idiomas,
        "ciudad"      : ciudad,
        "telefono" :  telefono,
        "categoria" :  categoria,
        "exp"       : exp,
        "descripcion": descripcion,
        //"disponible" : disponible,
        "fotoUrl"    : fotoUrl,
        //"foto"       : foto,
    };
}