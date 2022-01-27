import 'package:flutter/material.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/models/films.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, this.film, this.character}) : super(key: key);

  final Film? film;
  final Character? character;

  @override
  Widget build(BuildContext context) {
    final String name = (film != null) ? film!.title : character!.name;
    final color = (film != null) ? Colors.red : Colors.green;
    return Container(
      height: 120,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 3,
          ),
        ),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              name,
              style: const TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
