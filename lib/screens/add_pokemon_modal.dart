import 'package:flutter/material.dart';
import 'package:pokedex/pokemon_api.dart';
import 'package:pokedex/models/pokemon_list.dart';
import 'package:provider/provider.dart';

class AddPokemonModal extends StatefulWidget {
  const AddPokemonModal({Key? key}) : super(key: key);

  @override
  State<AddPokemonModal> createState() => _AddPokemonModalState();
}

class _AddPokemonModalState extends State<AddPokemonModal> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: txtController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter the pokemon ID',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the pokemon ID';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  await _addNewPokemon(context);
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _addNewPokemon(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      final navigator = Navigator.of(context);
      final provider = Provider.of<PokemonList>(context, listen: false);
      var pokemon = await fetchPokemon(txtController.text);
      provider.add(pokemon);
      navigator.pop();
    }
  }
}
