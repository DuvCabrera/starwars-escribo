import 'package:flutter/foundation.dart';
import 'package:starwars_app/models/films.dart';
import 'package:starwars_app/repository/film_repository.dart';

import 'package:starwars_app/repository/film_repository_interface.dart';
import 'package:starwars_app/services/htpp_client_service.dart';

class RequestFilmViewModel extends ChangeNotifier {
  IFilmRepository repository = FilmRepository(HttpClientService());

  ListFilms? listFilms;

  fill() async {
    try{
      listFilms = await repository.getFilms();
      notifyListeners();

    }catch (e){
      print(e);
    }

  }
}
