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
    final list = Provider.of<RequestCharacterViewModel>(context,listen: true);

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

//  @override
//   Widget build(BuildContext context) {
//     final characterWeb = Provider.of<RequestCharacterViewModel>(context);
//     return FutureBuilder(
//         future: characterWeb.repository.getCharacters(),
//         initialData: const [],
//         builder: (BuildContext context, snapshot) {
//           switch (snapshot.connectionState) {
//             case ConnectionState.none:
//               break;
//             case ConnectionState.waiting:
//               return const ProgressWidget();
//             case ConnectionState.active:
//               break;
//             case ConnectionState.done:
//               if(snapshot.hasData){
//                 ListCharacter listCharacter = snapshot.data as ListCharacter;
//                 return GridListWidget(
//                     json: _toJson(listCharacter), isFilm: false);
//               } else {
//                 return const CenteredMessageWidget('Dados não foram encontrados',icon: Icons.warning_amber_outlined);
//               }
//           }
//           return const CenteredMessageWidget('Erro desconhecido',icon: Icons.warning_amber_outlined);
//         });
//   }


// return Consumer<RequestCharacterViewModel>(
//         builder: (BuildContext context, value, Widget? child) {
//       if (value.listCharacter == null) {
//         value.fill();
//         return const ProgressWidget();
//       } else {
//         return GridListWidget(
//         json: _toJson(value.listCharacter!),
//         isFilm: false,
//       );}