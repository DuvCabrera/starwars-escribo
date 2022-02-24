import 'package:flutter/material.dart';

import '../../domain/entities/entities.dart';

import 'card_widget.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget(
      {Key? key, required this.list, required this.isFavorite, this.onFavorite})
      : super(key: key);
  final List<StarWarsCharacterEntity> list;
  final bool isFavorite;
  final Function(bool favorite, String name)? onFavorite;

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (widget.onFavorite != null) {
              widget.isFavorite == false
                  ? widget.onFavorite!(false, widget.list[index].name)
                  : widget.onFavorite!(true, widget.list[index].name);
            }
          },
          child: CardWidget(
            character: widget.list[index],
            isFavorite: widget.isFavorite,
          ),
        );
      },
    );
  }
}
