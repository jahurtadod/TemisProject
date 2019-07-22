import 'dart:convert';

Dialogo dialogoFromJson(String str) => Dialogo.fromJson(json.decode(str));

String dialogoToJson(Dialogo data) => json.encode(data.toJson());

class Dialogo {
  String nombre;
  String rol;
  String descripcion;

  Dialogo({
    this.nombre,
    this.rol,
    this.descripcion,
  });

  factory Dialogo.fromJson(Map<String, dynamic> json) => new Dialogo(
    nombre: json["nombre"],
    rol: json["rol"],
    descripcion: json["descripcion"],
  );

  Map<String, dynamic> toJson() => {
    "nombre": nombre,
    "rol": rol,
    "descripcion": descripcion,
  };
}