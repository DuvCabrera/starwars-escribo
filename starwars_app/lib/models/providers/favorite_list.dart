import 'package:flutter/material.dart';
import 'package:starwars_app/database/dao/star_war_dao.dart';
import 'package:starwars_app/models/favorite.dart';
import 'package:starwars_app/viewmodels/change_favorite_list_viewmodel.dart';

class FavoriteListProvider extends ChangeNotifier{

  final ChangeFavoriteListViewModel changeFavoriteListViewModel = ChangeFavoriteListViewModel(storage: StarWarsDao());
  List<Favorite> get favoriteList => changeFavoriteListViewModel.config.favorites;

  startList() {
    changeFavoriteListViewModel.init();
    notifyListeners();
  }


}