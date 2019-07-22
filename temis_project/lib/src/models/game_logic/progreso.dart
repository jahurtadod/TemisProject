import 'package:temis_project/src/models/game_logic/partida.dart';

import 'jugador.dart';

class Progreso {
  Jugador jugador;
  List<Partida> partidas;

  Progreso({
    this.jugador,
    this.partidas,
  });

  void guardarProgreso() {}
}
