import 'package:flutter/material.dart';
import 'package:starwars_app/components/card.dart';

import '../../domain/entities/entities.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key, required this.list, required this.isFilm})
      : super(key: key);
  final List<dynamic> list;
  final bool isFilm;

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          if (widget.isFilm) {
            final Film film = list[index];
            return CardWidget(
              film: film,
            );
          } else {
            final StarWarsCharacterEntity character = widget.list[index];
            return CardWidget(
              character: character,
            );
          }
        });
  }
}
