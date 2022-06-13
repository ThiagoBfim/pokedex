
class Pokemon {
  const Pokemon({
    required this.name,
    required this.id,
    required this.imageUrl,
  });

  final String name;
  final String id;
  final String imageUrl;
}

const urlPrefix =
    'https://assets.pokemon.com/assets/cms2/img/pokedex/full';

const pokemons = [
  Pokemon(
    name: 'Venusaur',
    id: '#001',
    imageUrl: '$urlPrefix/003.png',
  ),
  Pokemon(
    name: 'Charizard',
    id: '#006',
    imageUrl: '$urlPrefix/006.png',
  ),
  Pokemon(
    name: 'Blastoise',
    id: '#009',
    imageUrl: '$urlPrefix/009.png',
  ),
  Pokemon(
    name: 'Arcanine',
    id: '#059',
    imageUrl: '$urlPrefix/059.png',
  ),
  Pokemon(
    name: 'Alakazam',
    id: '#065',
    imageUrl: '$urlPrefix/065.png',
  ),
  Pokemon(
    name: 'Golem',
    id: '#076',
    imageUrl: '$urlPrefix/076.png',
  ),
  Pokemon(
    name: 'Mr. Mime',
    id: '#122',
    imageUrl: '$urlPrefix/122.png',
  ),
  Pokemon(
    name: 'Electabuzz',
    id: '#125',
    imageUrl: '$urlPrefix/125.png',
  ),
  Pokemon(
    name: 'Magmar',
    id: '#126',
    imageUrl: '$urlPrefix/126.png',
  ),
  Pokemon(
    name: 'Gyarados',
    id: '#130',
    imageUrl: '$urlPrefix/130.png',
  ),
  Pokemon(
    name: 'Lapras',
    id: '#131',
    imageUrl: '$urlPrefix/131.png',
  ),
  Pokemon(
    name: 'Snorlax',
    id: '#143',
    imageUrl: '$urlPrefix/143.png',
  ),
  Pokemon(
    name: 'Dragonite',
    id: '#149',
    imageUrl: '$urlPrefix/149.png',
  ),
  Pokemon(
    name: 'Ho-Oh',
    id: '#250',
    imageUrl: '$urlPrefix/250.png',
  ),
];
