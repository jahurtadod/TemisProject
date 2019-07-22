import 'dart:convert';

import 'package:temis_project/src/models/business_logic/ruta.dart';

Audiencia audienciaFromJson(String str) => Audiencia.fromJson(json.decode(str));

String audienciaToJson(Audiencia data) => json.encode(data.toJson());

class Audiencia {
  String nombre;
  String descripcion;
  List<Ruta> ruta;

  Audiencia({
    this.nombre,
    this.descripcion,
    this.ruta,
  });

  factory Audiencia.fromJson(Map<String, dynamic> json) => new Audiencia(
    nombre: json["nombre"],
    descripcion: json["descripcion"],
    ruta: new List<Ruta>.from(json["ruta"].map((x) => Ruta.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "nombre": nombre,
    "descripcion": descripcion,
    "ruta": new List<dynamic>.from(ruta.map((x) => x.toJson())),
  };
}