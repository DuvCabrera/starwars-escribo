import 'package:starwars_app/interfaces/local_storage_interface.dart';
import 'package:starwars_app/models/appconfig_model.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/models/favorite.dart';
import 'package:starwars_app/models/films.dart';

import '../contants.dart';

class ChangeFavoriteListViewModel {
  final ILocalStorage storage;

  final AppConfigModel config = AppConfigModel();

  ChangeFavoriteListViewModel({required this.storage});

  changeList(list) {
    config.favorites = list;
  }

    Future init() async {
    List<Favorite> newList =  await storage.getAll();
    changeList(newList);
  }


  deleteFavorite(String json){
    List<Favorite> favorite = config.favorites.where((element) => element.json == json).toList();
    storage.delete(favorite[0].id!);
    config.favorites.removeWhere((e) => e.json == json);
  }

  saveFavoriteCharacter(Character person){
    final String json = characterToJson(person);
    final Favorite favorite = Favorite(json, character);
    config.favorites.add(favorite);
    storage.put(json, character);
    init();
  }

  saveFavoriteFilm(Film movie){
    final String json = filmToJson(movie);
    final Favorite favorite = Favorite(json, film);
    config.favorites.add(favorite);
    storage.put(json, film);
    init();
  }

}