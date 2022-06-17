
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';

class PokemonList extends ChangeNotifier {
  final List<Pokemon> _pokemons = _defaultPokemons;

  UnmodifiableListView<Pokemon> get pokemons => UnmodifiableListView(_pokemons);

  /// Adds [pokemon] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(Pokemon pokemon) {
    _pokemons.add(pokemon);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    _pokemons.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }



}


const urlPrefix =
    'https://assets.pokemon.com/assets/cms2/img/pokedex/full';

var _defaultPokemons = [
  const Pokemon(
    name: 'Venusaur',
    id: '#001',
    imageUrl: '$urlPrefix/003.png',
  ),
  const Pokemon(
    name: 'Charizard',
    id: '#006',
    imageUrl: '$urlPrefix/006.png',
  ),
  const Pokemon(
    name: 'Blastoise',
    id: '#009',
    imageUrl: '$urlPrefix/009.png',
  ),
  const Pokemon(
    name: 'Arcanine',
    id: '#059',
    imageUrl: '$urlPrefix/059.png',
  ),
  const Pokemon(
    name: 'Alakazam',
    id: '#065',
    imageUrl: '$urlPrefix/065.png',
  ),
  const Pokemon(
    name: 'Golem',
    id: '#076',
    imageUrl: '$urlPrefix/076.png',
  ),
  const Pokemon(
    name: 'Mr. Mime',
    id: '#122',
    imageUrl: '$urlPrefix/122.png',
  ),
  const Pokemon(
    name: 'Electabuzz',
    id: '#125',
    imageUrl: '$urlPrefix/125.png',
  ),
  const Pokemon(
    name: 'Magmar',
    id: '#126',
    imageUrl: '$urlPrefix/126.png',
  ),
  const Pokemon(
    name: 'Gyarados',
    id: '#130',
    imageUrl: '$urlPrefix/130.png',
  ),
  const Pokemon(
    name: 'Lapras',
    id: '#131',
    imageUrl: '$urlPrefix/131.png',
  ),
  const Pokemon(
    name: 'Snorlax',
    id: '#143',
    imageUrl: '$urlPrefix/143.png',
  ),
  const Pokemon(
    name: 'Dragonite',
    id: '#149',
    imageUrl: '$urlPrefix/149.png',
  ),
  const Pokemon(
    name: 'Ho-Oh',
    id: '#250',
    imageUrl: '$urlPrefix/250.png',
  ),
];
