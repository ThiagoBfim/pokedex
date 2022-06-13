
import 'package:flutter/material.dart';
import 'package:pokedex/pokemon.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({key, required this.pokemon}) : super(key: key);

  final Pokemon pokemon;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Hero(
        tag: pokemon.id,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Image.network(
              pokemon.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}