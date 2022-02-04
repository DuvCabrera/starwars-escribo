import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/models/providers/favorite_list.dart';
import 'package:starwars_app/models/films.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, this.film, this.character}) : super(key: key);

  final Film? film;
  final Character? character;

  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<FavoriteListProvider>(context,listen: true);
    final String name = (film != null) ? film!.title : character!.name;
    Size size = MediaQuery.of(context).size;
    bool favorite;
    if (film != null) {
      String json = filmToJson(film!);
      favorite = favorites.favoriteList.where((e) => e.json == json).isNotEmpty;


    } else {
      String json = characterToJson(character!);
      favorite = favorites.favoriteList.where((e) => e.json == json).isNotEmpty;

    }

    var icon = (favorite) ? Icons.favorite : Icons.favorite_border;
    return Container(
      height: 120,
      width: size.width,
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
              child: SizedBox(width: size.width * 0.65,
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(fontSize: 25, ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 20),
              child: Consumer<FavoriteListProvider>(builder: (_,value,__) {
                return IconButton(
                  icon: Icon(icon,size:50,),
                  onPressed: () {
                    if (!favorite) {
                      if (film != null) {
                        favorites.changeFavoriteListViewModel.saveFavoriteFilm(film!);
                        favorites.startList();
                      } else {
                        favorites.changeFavoriteListViewModel.saveFavoriteCharacter(character!);
                        favorites.startList();
                      }
                    } else {
                      if (film != null) {
                        String movie = filmToJson(film!);
                        favorites.changeFavoriteListViewModel.deleteFavorite(movie);
                        favorites.startList();
                      } else {
                        String person = characterToJson(character!);
                        favorites.changeFavoriteListViewModel.deleteFavorite(person);
                        favorites.startList();
                      }
                    }
                  },
                );
              },
              ),
            )
          ],
        ),
      ),
    );
  }
}
