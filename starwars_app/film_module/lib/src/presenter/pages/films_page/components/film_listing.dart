import 'package:dependency_module/dependency_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../presenter.dart';

class FilmListingWidget extends StatefulWidget {
  const FilmListingWidget({Key? key}) : super(key: key);

  @override
  State<FilmListingWidget> createState() => _FilmListingWidgetState();
}

class _FilmListingWidgetState
    extends ModularState<FilmListingWidget, FilmStore> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (store.filmList.isEmpty) {
        store.fill();
        return const ProgressWidget();
      } else {
        return ListViewWidget(
          isFavorite: store.isFavorite,
          list: store.filmList,
          onFavorite: store.likeIt,
        );
      }
    });
  }
}
