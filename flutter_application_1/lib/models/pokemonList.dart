class PokemonListModel {
  String name = "";
  String url = "";

  PokemonListModel({required this.name, required this.url});

  // Serialização
  PokemonListModel.fromJson(Map<String, dynamic> json) {
    this.name = json["name"];
    this.url = json["url"];
  }

  // Deserealização
}
