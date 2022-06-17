import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/models/pokemon_list.dart';
import 'package:pokedex/screens/pokemon_details.dart';
import 'package:pokedex/screens/pokemon_list_item.dart';
import 'package:provider/provider.dart';

import 'add_pokemon_modal.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold is very common Widget used to implement the basic visual layout
      body: SingleChildScrollView(
        // SingleChildScrollView help when we have more elements than the height of the phone, we will have a scroll
        child: Consumer<PokemonList>(builder: (context, pokemon, child) {
          return Column(
            //Column will allows a list of elements that will be in the vertical orientation
            children: [
              for (final pokemon in pokemon.pokemons)
                GestureDetector(
                  //GestureDetector help us to configure the onTap action
                  onTap: () => _sendToPokemonDetails(context, pokemon),
                  child: PokemonListItem(
                    imageUrl: pokemon.imageUrl,
                    name: pokemon.name,
                    id: pokemon.id,
                  ),
                ),
              const SizedBox(height: 50),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40),
                      primary: Theme.of(context).colorScheme.secondary),
                  onPressed: () =>
                      Provider.of<PokemonList>(context, listen: false)
                          .removeAll(),
                  child: Text(
                    'Clear all',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor),
                  )),
              const SizedBox(height: 100)
            ],
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => action(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  action(BuildContext context) {
    showMaterialModalBottomSheet(
      context: context,
      duration: const Duration(milliseconds: 600),
      builder: (context) => const AddPokemonModal(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

  Future<void> _sendToPokemonDetails(BuildContext context, Pokemon pokemon) {
    return Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (BuildContext _) => PokemonDetails(pokemon: pokemon)));
  }
}
