import 'package:dart_avancado_2/models/pokemonDetailModel.dart';
import 'package:dart_avancado_2/models/pokemonDetailType.dart';
import 'package:flutter/material.dart';

class PokemonForm extends StatelessWidget {
  final PokemonDetailModel pokemon;

  const PokemonForm({required this.pokemon, super.key});

  List<Widget> _getTypeList() {
    List<Widget> list = [];

    for(PokemonDetailType item in pokemon.types)
      list.add(Text(item.name));

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.yellowAccent[100],
          alignment: Alignment.center,
          height: 300,
          width: double.infinity,
          child: Image.network(
            pokemon.imageURL,
            fit: BoxFit.contain,
            height: double.infinity,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Center(
                child: Icon(Icons.photo_size_select_actual_outlined,
                    size: 128, color: Colors.red),
              );
            },
          ),
        ),
        ListTile(
          leading: Text(
            "#${this.pokemon.id}",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          title: Text(
            this.pokemon.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(title: Text("Tipos",),
                 subtitle: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   mainAxisSize: MainAxisSize.min,
                   children: this._getTypeList(),
                 ),)
      ],
    );
  }
}
