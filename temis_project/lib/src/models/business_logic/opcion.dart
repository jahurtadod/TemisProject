import 'dart:convert';

Opcion opcionFromJson(String str) => Opcion.fromJson(json.decode(str));

String opcionToJson(Opcion data) => json.encode(data.toJson());

class Opcion {
  String pregunta;
  String opcion;
  String respuesta;

  Opcion({
    this.pregunta,
    this.opcion,
    this.respuesta,
  });

  factory Opcion.fromJson(Map<String, dynamic> json) => new Opcion(
    pregunta: json["pregunta"],
    opcion: json["opcion"],
    respuesta: json["respuesta"],
  );

  Map<String, dynamic> toJson() => {
    "pregunta": pregunta,
    "opcion": opcion,
    "respuesta": respuesta,
  };
}