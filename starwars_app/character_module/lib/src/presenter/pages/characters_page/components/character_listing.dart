import 'package:dependency_module/dependency_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../presenter.dart';

class CharacterListingWidget extends StatefulWidget {
  const CharacterListingWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CharacterListingWidget> createState() => _CharacterListingWidgetState();
}

class _CharacterListingWidgetState
    extends ModularState<CharacterListingWidget, CharacterStore> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (store.listFavorite.isEmpty) {
        store.fill();
        return const ProgressWidget();
      } else {
        return ListViewWidget(
          list: store.listFavorite,
          onFavorite: store.likeIt,
        );
      }
    });
  }
}
