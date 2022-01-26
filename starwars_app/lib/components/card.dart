import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Text(name),
          FavoriteButton(
            valueChanged: () {},
          )
        ],
      ),
    );
  }
}
