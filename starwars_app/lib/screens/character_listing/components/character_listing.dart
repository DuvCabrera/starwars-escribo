import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/components/grid_list.dart';
import 'package:starwars_app/components/progress.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/viewmodels/request_character_viewmodel.dart';

class CharacterListingWidget extends StatefulWidget {
  const CharacterListingWidget({Key? key}) : super(key: key);

  @override
  State<CharacterListingWidget> createState() => _CharacterListingWidgetState();
}

class _CharacterListingWidgetState extends State<CharacterListingWidget> {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<RequestCharacterViewModel>(context);

      if (list.listCharacter == null) {
        list.fill();
        return const ProgressWidget();
      } else {
        return GridListWidget(
        json: _toJson(list.listCharacter!),
        isFilm: false,
      );}

  }

  String _toJson(ListCharacter listCharacter) {
    String jsonCharacter = listCharacterToJson(listCharacter);
    return jsonCharacter;
  }
}
