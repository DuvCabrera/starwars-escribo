import 'package:dependency_module/dependency_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../presenter.dart';

class CharacterListingWidget extends StatefulWidget {
  const CharacterListingWidget({Key? key}) : super(key: key);

  @override
  State<CharacterListingWidget> createState() => _CharacterListingWidgetState();
}

class _CharacterListingWidgetState extends State<CharacterListingWidget> {
  @override
  Widget build(BuildContext context) {
    final store = Modular.get<CharacterStore>();

    return Observer(builder: (context) {
      if (store.characterList.isEmpty) {
        store.fill();
        return const ProgressWidget();
      } else {
        return ListViewWidget(
          isFavorite: store.isFavorite,
          list: store.characterList,
        );
      }
    });
  }
}
