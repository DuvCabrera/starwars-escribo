import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/models/films.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key? key, this.film, this.character}) : super(key: key);

  final Film? film;
  final Character? character;

  @override
  Widget build(BuildContext context) {
    final String name = (film != null) ? film!.title : character!.name;
    var favorite = false;
    return Container(
      height: 120,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                name,
                style: const TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: FavoriteButton(
                isFavorite: favorite,
                valueChanged: (_isFavorite) {
                  if (_isFavorite) {}
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
