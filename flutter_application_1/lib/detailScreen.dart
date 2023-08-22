import 'package:dart_avancado_2/models/pokemonDetailModel.dart';
import 'package:dart_avancado_2/repositories/pokemonRepository.dart';
import 'package:dart_avancado_2/widgets/pokemonForm.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String pokemonName;

  const DetailScreen({required this.pokemonName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.pokemonName),
      ),
      body: FutureBuilder(
        future: PokemonRepository.getPokemonData(pokemonName),
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: TextStyle(color: Colors.red),
              ),
            );

          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          PokemonDetailModel pokemon = snapshot.data!;
          print('');

          return PokemonForm(pokemon: pokemon);
        },
      ),
    );
  }
}
