import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/models/providers/favorite_list.dart';
import 'package:starwars_app/models/films.dart';
import 'package:starwars_app/screens/favorites_list/components/card.dart';

import '../../../contants.dart';


class FavoriteListWidget extends StatelessWidget {
  const FavoriteListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FavoriteListProvider list = Provider.of<FavoriteListProvider>(context);
    return ListView.builder(
      itemCount: list.favorites.length,
      itemBuilder: (context, index) {
        if (list.favorites[index].type == character) {
          Character person = characterFromJson(list.favorites[index].json);
          return CardWidget(
            character: person,
          );
        } else {
          Film movie = filmFromJson(list.favorites[index].json);
          return CardWidget(
            film: movie,
          );
        }
      },
    );
  }
}
