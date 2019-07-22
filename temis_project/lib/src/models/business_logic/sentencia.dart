import 'dart:convert';

Sentencia sentenciaFromJson(String str) => Sentencia.fromJson(json.decode(str));

String sentenciaToJson(Sentencia data) => json.encode(data.toJson());

class Sentencia {
  String resolucion;
  String descripcion;

  Sentencia({
    this.resolucion,
    this.descripcion,
  });

  factory Sentencia.fromJson(Map<String, dynamic> json) => new Sentencia(
        resolucion: json["resolucion"],
        descripcion: json["descripcion"],
      );

  Map<String, dynamic> toJson() => {
        "resolucion": resolucion,
        "descripcion": descripcion,
      };
}
