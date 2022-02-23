import 'package:dependency_module/dependency_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../presenter.dart';

class CharacterListingWidget extends StatefulWidget {
  const CharacterListingWidget({Key? key, required this.store})
      : super(key: key);
  final CharacterStore store;

  @override
  State<CharacterListingWidget> createState() => _CharacterListingWidgetState();
}

class _CharacterListingWidgetState extends State<CharacterListingWidget> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (widget.store.characterList.isEmpty) {
        widget.store.fill();
        return const ProgressWidget();
      } else {
        return ListViewWidget(
          isFavorite: widget.store.isFavorite,
          list: widget.store.characterList,
          onFavorite: widget.store.likeIt,
        );
      }
    });
  }
}
