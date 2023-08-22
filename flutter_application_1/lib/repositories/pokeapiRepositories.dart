// ignore_for_file: unused_import

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_application_1/models/pokemonList.dart';

class PokemonRepository {
  static Future<List<PokemonListModel>> getPokemons() async {
    Uri uri = Uri.https("pokeapi.co", "api/v2/pokemon?limit=150");

    http.Response resposta = await http.get(uri);

    var respostaObj = jsonDecode(resposta.body);

    print(respostaObj);

    (respostaObj["results"] as List<JsonMap>);

    return [];
  }
}
