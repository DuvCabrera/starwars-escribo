import 'package:flutter/material.dart';
import 'package:starwars_app/database/dao/star_war_dao.dart';
import 'package:starwars_app/models/favorite.dart';
import 'package:starwars_app/models/films.dart';

import '../../contants.dart';
import '../character.dart';

class FavoriteListProvider extends ChangeNotifier{

  List<Favorite> _favorites = [];

  List<Favorite> get favorites => _favorites;

  final StarWarsDao _dao = StarWarsDao();

  changeList(list) {
    _favorites = list;
  }

  startList() async {
    List<Favorite> newList =  await _dao.findAll();
    changeList(newList);
    notifyListeners();
  }


  deleteFavorite(String json){
    List<Favorite> favorite = _favorites.where((element) => element.json == json).toList();
    _dao.deleteFavorite(favorite[0].id!);
    _favorites.removeWhere((e) => e.json == json);
    notifyListeners();
  }

  saveFavoriteCharacter(Character person){
    final String json = characterToJson(person);
    final Favorite favorite = Favorite(json, character);
    _favorites.add(favorite);
    _dao.saveFavorite(json, character);
    startList();
  }

  saveFavoriteFilm(Film movie){
    final String json = filmToJson(movie);
    final Favorite favorite = Favorite(json, film);
    _favorites.add(favorite);
    _dao.saveFavorite(json, film);
    startList();
  }


}