import 'package:starwars_app/models/films.dart';

abstract class IFilmRepository {
  Future<ListFilms> getFilms();
}