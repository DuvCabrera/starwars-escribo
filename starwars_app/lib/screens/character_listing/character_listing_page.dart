import 'package:flutter/material.dart';
import 'package:starwars_app/components/grid_list.dart';
import 'package:starwars_app/components/progress.dart';
import 'package:starwars_app/models/character.dart';
import '../../http/web_clients/character_web_client.dart';

class CharacterListingPage extends StatelessWidget {
  CharacterListingPage({Key? key}) : super(key: key);

  final CharacterWebClient characterWebClient = CharacterWebClient();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: characterWebClient.getCharacters() ,builder: (context, snapshot) {
      switch (snapshot.connectionState){

        case ConnectionState.none:
          break;
        case ConnectionState.waiting:
          return const ProgressWidget();
        case ConnectionState.active:
          // TODO: Handle this case.
          break;
        case ConnectionState.done:
          ListCharacter listCharacter = snapshot.data as ListCharacter;
          return GridListWidget(json: _toJson(listCharacter), isFilm: false) ;
      }
      return Text('In construction');
    });
  }

  String _toJson(ListCharacter listCharacter) {
    String jsonCharacter = listCharacterToJson(listCharacter);
    return jsonCharacter;
  }
}
