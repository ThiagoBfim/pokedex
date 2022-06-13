
import 'package:flutter/material.dart';
import 'package:pokedex/pokemon.dart';
import 'package:pokedex/pokemon_details.dart';
import 'package:pokedex/pokemon_list_item.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: ExampleParallax(),
        ),
      ),
    );
  }
}

class ExampleParallax extends StatelessWidget {
  const ExampleParallax({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final pokemon in pokemons)
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute<void>(
                      builder: (BuildContext _) =>
                          PokemonDetails(pokemon: pokemon))),
              child: PokemonListItem(
                imageUrl: pokemon.imageUrl,
                name: pokemon.name,
                id: pokemon.id,
              ),
            ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
