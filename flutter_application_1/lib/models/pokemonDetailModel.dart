import 'package:dart_avancado_2/consts/consts.dart';
import 'package:dart_avancado_2/models/pokemonDetailType.dart';

class PokemonDetailModel {
  int id = 0;
  String name = "";
  String imageURL = "";
  List<PokemonDetailType> types = [];

  PokemonDetailModel({ required this.id, required this.name, required this.imageURL });

  PokemonDetailModel.fromJson(JsonMap json) {
    this.id = json["id"];
    this.name = json["name"];
    this.imageURL = json["sprites"]["front_default"];

    (json["types"] as List<dynamic>).forEach((element) {
      this.types.add(PokemonDetailType.fromJson(element as JsonMap));
    });
  }
}