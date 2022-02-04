import 'package:starwars_app/http/web_client.dart';
import 'package:starwars_app/interfaces/http_client_interface.dart';
import 'package:starwars_app/models/films.dart';
import 'package:starwars_app/repository/film_repository_interface.dart';

class FilmRepository implements IFilmRepository {

  final IHttpClient client;

  FilmRepository(this.client);

  @override
  Future<ListFilms> getFilms() async {
    final map = await client.get(baseUrl + allFilms);
    ListFilms films = ListFilms.fromMap(map);
    return films;
  }
}

