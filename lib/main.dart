import 'package:flutter/material.dart';
import 'package:pokedex/pokemon.dart';
import 'package:pokedex/pokemon_details.dart';
import 'package:pokedex/pokemon_list_item.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Here we use the MaterialApp to define the app theme align with Material Design
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      //This is our theme
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        //Scaffold is very common Widget used to implement the basic visual layout
        body: Center(
          child: HomeWidget(),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // This means that if we have more elements than the height of the phone, we will have a scroll
      child: Column( //All the elements will be in the vertical orientation,
        children: [
          for (final pokemon in pokemons)
            GestureDetector( //This Widget help us to configure the onTap action
              onTap: () => _sendToPokemonDetails(context, pokemon),
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

  Future<void> _sendToPokemonDetails(BuildContext context, Pokemon pokemon) {
    return Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext _) =>
                    PokemonDetails(pokemon: pokemon)));
  }
}
