import 'package:film_module/src/presenter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key, required this.list, required this.onFavorite})
      : super(key: key);
  final List<Map<String, dynamic>> list;
  final Function(Map<String, dynamic> name) onFavorite;

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
            widget.onFavorite(widget.list[index]);
          },
          child: CardWidget(
            character: widget.list[index],
            isFavorite: widget.list[index]['isFavorite'],
          ),
        );
      },
    );
  }
}
