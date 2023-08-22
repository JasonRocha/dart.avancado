import 'package:dart_avancado_2/consts/consts.dart';

class PokemonDetailType {
  String name = "";

  PokemonDetailType.fromJson(JsonMap json) {
    this.name = json["type"]["name"];
  }
}