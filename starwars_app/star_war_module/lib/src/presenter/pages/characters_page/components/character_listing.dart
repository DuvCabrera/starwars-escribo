import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:starwars_app/components/grid_list.dart';
import 'package:starwars_app/components/progress.dart';

import '../../../../external/datasources/datasources.dart';
import '../../../../external/repositories/repositories.dart';
import '../../../../infra/usecases/usecases.dart';
import '../../../store/character_store_classic.dart';

class CharacterListingWidget extends StatefulWidget {
  const CharacterListingWidget({Key? key}) : super(key: key);

  @override
  State<CharacterListingWidget> createState() => _CharacterListingWidgetState();
}

class _CharacterListingWidgetState extends State<CharacterListingWidget> {
  @override
  Widget build(BuildContext context) {
    final store = CharacterStoreClassic(RequestCharacterList(
        client: RemoteHttpClient(client: RemoteClient()),
        numberOfPages: 10,
        url: 'http://swapi.dev/api/people/?page='));

    return Observer(builder: (context) {
      if (store.listCharacter.isEmpty) {
        store.fill();
        return const ProgressWidget();
      } else {
        return GridListWidget(
          json: store.listCharacter,
          isFilm: false,
        );
      }
    });
  }
}
