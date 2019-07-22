import 'dart:convert';

Articulo articuloFromJson(String str) => Articulo.fromJson(json.decode(str));

String articuloToJson(Articulo data) => json.encode(data.toJson());

class Articulo {
  String nombre;
  String seccion;
  String descripcion;

  Articulo({
    this.nombre,
    this.seccion,
    this.descripcion,
  });

  factory Articulo.fromJson(Map<String, dynamic> json) => new Articulo(
        nombre: json["nombre"],
        seccion: json["seccion"],
        descripcion: json["descripcion"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "seccion": seccion,
        "descripcion": descripcion,
      };
}
