import 'package:http/http.dart' show Client;
import 'package:flutter/services.dart' show rootBundle;
import 'package:temis_project/src/models/business_logic/audiencia.dart';

class DataBase {

  static const jsonAudiencia= 'assets/audiencia.json';

  final Client _client = Client();

  Future<List<Audiencia>> getPhotos() async {
    List<Audiencia> photoList;

    final response = await _client.get(jsonAudiencia);

    photoList = welcomeFromJson(response.body);

    return photoList;

  }
}