import 'package:temis_project/src/models/business_logic/ruta.dart';

import 'articulo.dart';

class Audiencia {
  String nombre;
  String descripcion;
  List<Articulo> articulo;
  List<Ruta> rutas;

  Audiencia({
    this.nombre,
    this.descripcion,
    this.articulo,
    this.rutas,
  });
}
