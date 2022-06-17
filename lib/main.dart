import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_list.dart';
import 'package:pokedex/screens/home.dart';
import 'package:provider/provider.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => PokemonList(), child: const MainWidget()));
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
      home: const HomeWidget(),
    );
  }
}
