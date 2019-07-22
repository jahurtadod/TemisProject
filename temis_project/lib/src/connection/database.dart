import 'package:http/http.dart' show Client;
import 'package:flutter/services.dart' show rootBundle;
import 'package:temis_project/src/models/business_logic/audiencia.dart';

class DataBase {
  static const jsonAudiencia = 'assets/repositorio_local/audiencia.json';

  final Client _client = Client();

  Future<List<Audiencia>> getAudencia() async {
    List<Audiencia> audienciaList;

    audienciaList =
        audienciaFromJson(await rootBundle.loadString(jsonAudiencia))
            as List<Audiencia>;

    return audienciaList;
  }
}
