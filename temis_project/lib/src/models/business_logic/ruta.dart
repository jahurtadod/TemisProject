import 'package:temis_project/src/models/business_logic/opcion.dart';
import 'package:temis_project/src/models/business_logic/sentencia.dart';

import 'audiencia.dart';
import 'dialogo.dart';

class Ruta {
  String nombre;
  String rol;
  Audiencia audiencia;
  List<Dialogo> dialogos;
  List<Opcion> opciones;
  Sentencia setencia;

  Ruta(this.nombre, this.rol, this.audiencia);
}
