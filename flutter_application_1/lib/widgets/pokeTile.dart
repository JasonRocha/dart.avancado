import 'package:dart_avancado_2/detailScreen.dart';
import 'package:dart_avancado_2/models/pokemonListModel.dart';
import 'package:flutter/material.dart';

class PokeTile extends StatelessWidget {
  final PokemonListModel pokemon;

  const PokeTile({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.pokemon.name),
      subtitle: Text(this.pokemon.url),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailScreen(pokemonName: this.pokemon.name),
        ));
      },
    );
  }
}
