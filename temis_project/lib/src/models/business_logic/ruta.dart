import 'opcion.dart';
import 'sentencia.dart';
import 'dialogo.dart';

class Ruta {
  String nombre;
  String rol;
  List<Dialogo> dialogo;
  List<Opcion> opcion;
  Sentencia sentencia;

  Ruta({
    this.nombre,
    this.rol,
    this.dialogo,
    this.opcion,
    this.sentencia,
  });

  factory Ruta.fromJson(Map<String, dynamic> json) => new Ruta(
    nombre: json["nombre"],
    rol: json["rol"],
    dialogo: new List<Dialogo>.from(json["dialogo"].map((x) => Dialogo.fromJson(x))),
    opcion: new List<Opcion>.from(json["opcion"].map((x) => Opcion.fromJson(x))),
    sentencia: Sentencia.fromJson(json["sentencia"]),
  );

  Map<String, dynamic> toJson() => {
    "nombre": nombre,
    "rol": rol,
    "dialogo": new List<dynamic>.from(dialogo.map((x) => x.toJson())),
    "opcion": new List<dynamic>.from(opcion.map((x) => x.toJson())),
    "sentencia": sentencia.toJson(),
  };
}
