import 'package:temis_project/src/models/game_logic/personaje.dart';
import 'package:temis_project/src/models/game_logic/progreso.dart';

class Partida {
  String nombre;
  Progreso progreso;
  List<Personaje> personaje;

  Partida({
    this.nombre,
    this.progreso,
    this.personaje,
  });

  void reanudarPartida() {}

  void reiniciarPartida() {}
}
