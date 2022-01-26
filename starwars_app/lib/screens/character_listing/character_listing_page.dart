import 'package:flutter/material.dart';
import 'package:starwars_app/components/grid_list.dart';
import 'package:starwars_app/components/progress.dart';
import 'package:starwars_app/models/character.dart';
import '../../http/web_clients/character_web_client.dart';

class CharacterListingPage extends StatefulWidget {
  const CharacterListingPage({Key? key}) : super(key: key);

  @override
  State<CharacterListingPage> createState() => _CharacterListingPageState();
}

class _CharacterListingPageState extends State<CharacterListingPage> {
  final CharacterWebClient characterWebClient = CharacterWebClient();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: characterWebClient.getCharacters(),
        initialData: const [],
        builder: (BuildContext context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return const ProgressWidget();
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              ListCharacter listCharacter = snapshot.data as ListCharacter;
              return GridListWidget(
                  json: _toJson(listCharacter), isFilm: false);
          }
          return Text('In construction');
        });
  }

  String _toJson(ListCharacter listCharacter) {
    String jsonCharacter = listCharacterToJson(listCharacter);
    return jsonCharacter;
  }
}
