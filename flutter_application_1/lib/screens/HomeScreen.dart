import 'package:dart_avancado_2/repositories/pokemonRepository.dart';
import 'package:dart_avancado_2/widgets/pokeTile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemons"),
      ),
      body: FutureBuilder(
        future: PokemonRepository.getPokemons(),
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Center(
              child: Text(snapshot.error.toString(), style: TextStyle(color: Colors.red),),
            );

          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => PokeTile(pokemon: snapshot.data![index]),);
        },
      ),
    );
  }
}
