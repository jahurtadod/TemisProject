import 'dart:convert';

Opcion opcionFromJson(String str) => Opcion.fromJson(json.decode(str));

String opcionToJson(Opcion data) => json.encode(data.toJson());

class Opcion {
  String pregunta;
  List<String> opcion;
  String respuesta;

  Opcion({
    this.pregunta,
    this.opcion,
    this.respuesta,
  });

  factory Opcion.fromJson(Map<String, dynamic> json) => new Opcion(
        pregunta: json["pregunta"],
        opcion: new List<String>.from(json["opcion"].map((x) => x)),
        respuesta: json["respuesta"],
      );

  Map<String, dynamic> toJson() => {
        "pregunta": pregunta,
        "opcion": new List<dynamic>.from(opcion.map((x) => x)),
        "respuesta": respuesta,
      };
}
