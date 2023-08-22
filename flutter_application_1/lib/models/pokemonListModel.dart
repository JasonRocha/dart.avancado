import '../consts/consts.dart';

class PokemonListModel {
  String name = "";
  String url = "";

  PokemonListModel({ required this.name, required this.url });

  // Serialização
  PokemonListModel.fromJson(JsonMap json) {
    this.name = json["name"];
    this.url = json["url"];
  }

  // Deserealização
}