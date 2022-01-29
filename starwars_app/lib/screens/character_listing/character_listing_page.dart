import 'package:flutter/material.dart';
import 'package:starwars_app/components/centered_message.dart';
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
              if(snapshot.hasData){
                ListCharacter listCharacter = snapshot.data as ListCharacter;
                return GridListWidget(
                    json: _toJson(listCharacter), isFilm: false);
              } else {
                return const CenteredMessage('Dados não foram encontrados',icon: Icons.warning_amber_outlined);
              }
          }
          return const CenteredMessage('Erro desconhecido',icon: Icons.warning_amber_outlined);
        });
  }

  String _toJson(ListCharacter listCharacter) {
    String jsonCharacter = listCharacterToJson(listCharacter);
    return jsonCharacter;
  }
}
