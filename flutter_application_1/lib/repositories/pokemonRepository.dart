import 'dart:convert';

import 'package:dart_avancado_2/consts/consts.dart';
import 'package:dart_avancado_2/models/pokemonDetailModel.dart';
import 'package:dart_avancado_2/models/pokemonListModel.dart';
import 'package:http/http.dart' as http;

class PokemonRepository {
  static Future<List<PokemonListModel>> getPokemons() async {
    Uri uri = Uri.https("pokeapi.co", "/api/v2/pokemon", {
      "limit": "150"
    });

    http.Response resposta = await http.get(uri);

    var respostaObj = jsonDecode(resposta.body);

    List<PokemonListModel> pokeList = [];

    (respostaObj["results"] as List<dynamic>).forEach((element) {
      pokeList.add(PokemonListModel.fromJson(element as JsonMap));
    });

    return pokeList;
  }

  static Future<PokemonDetailModel> getPokemonData(String pokemonName) async {
    Uri uri = Uri.https("pokeapi.co", "/api/v2/pokemon/${pokemonName}");

    http.Response resposta = await http.get(uri);

    return PokemonDetailModel.fromJson(jsonDecode(resposta.body));
  }
}