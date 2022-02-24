import 'package:dependency_module/dependency_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../presenter.dart';

class FilmListingWidget extends StatefulWidget {
  const FilmListingWidget({Key? key, required this.store}) : super(key: key);
  final FilmStore store;

  @override
  State<FilmListingWidget> createState() => _FilmListingWidgetState();
}

class _FilmListingWidgetState extends State<FilmListingWidget> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (widget.store.filmList.isEmpty) {
        widget.store.fill();
        return const ProgressWidget();
      } else {
        return ListViewWidget(
          isFavorite: widget.store.isFavorite,
          list: widget.store.filmList,
          onFavorite: widget.store.likeIt,
        );
      }
    });
  }
}
