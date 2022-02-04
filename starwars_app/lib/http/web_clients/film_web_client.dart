import 'dart:async';

import 'package:http/http.dart';
import 'package:starwars_app/models/films.dart';

import '../web_client.dart';

class FilmWebClient {

  Future get() async {
    final Response response = await client
        .get(Uri.parse(baseUrl + allFilms))
        .timeout(const Duration(seconds: 5));
    ListFilms films = filmsFromJson(response.body);
    return films;
  }
}
