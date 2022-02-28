import 'package:flutter/material.dart';

import '../../domain/entities/entities.dart';

import 'card_widget.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key, required this.list}) : super(key: key);
  final List<StarWarsFavoriteEntity> list;

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return CardWidget(
          favorite: widget.list[index],
        );
      },
    );
  }
}
