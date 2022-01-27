import 'package:flutter/material.dart';
import 'package:starwars_app/database/dao/star_war_dao.dart';
import 'package:starwars_app/models/favorite.dart';

class FavoriteList extends ChangeNotifier{

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
    _favorites.removeWhere((e) => e.json == json);
    List<Favorite> favorite = _favorites.where((element) => element.json == json).toList();
    _dao.deleteFavorite(favorite[0].id!);
  }

  saveFavorite(){

  }

}