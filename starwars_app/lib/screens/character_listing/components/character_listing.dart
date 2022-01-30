import 'package:flutter/material.dart';
import 'package:starwars_app/components/centered_message.dart';
import 'package:starwars_app/components/grid_list.dart';
import 'package:starwars_app/components/progress.dart';
import 'package:starwars_app/http/web_clients/character_web_client.dart';
import 'package:starwars_app/models/character.dart';

class CharacterListingWidget extends StatefulWidget {
  const CharacterListingWidget({Key? key}) : super(key: key);

  @override
  State<CharacterListingWidget> createState() => _CharacterListingWidgetState();
}

class _CharacterListingWidgetState extends State<CharacterListingWidget> {
  final CharacterWebClient characterWebClient = CharacterWebClient();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: characterWebClient.getMoreCharacters(),
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
                return const CenteredMessageWidget('Dados não foram encontrados',icon: Icons.warning_amber_outlined);
              }
          }
          return const CenteredMessageWidget('Erro desconhecido',icon: Icons.warning_amber_outlined);
        });
  }

  String _toJson(ListCharacter listCharacter) {
    String jsonCharacter = listCharacterToJson(listCharacter);
    return jsonCharacter;
  }
}
