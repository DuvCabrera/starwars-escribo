import 'package:flutter/material.dart';
import 'package:starwars_app/components/grid_list.dart';
import 'package:starwars_app/components/progress.dart';
import 'package:starwars_app/http/web_clients/film_web_client.dart';
import 'package:starwars_app/models/films.dart';

class FilmsListingPage extends StatefulWidget {
  const FilmsListingPage({Key? key}) : super(key: key);

  @override
  State<FilmsListingPage> createState() => _FilmsListingPageState();
}

class _FilmsListingPageState extends State<FilmsListingPage> {
    final FilmWebClient filmWebClient = FilmWebClient();

    @override
    Widget build(BuildContext context) {
      return FutureBuilder(
          future: filmWebClient.getFilms(),
          initialData: const [],
          builder: (BuildContext context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return const ProgressWidget();
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                ListFilms listFilms = snapshot.data as ListFilms;
                return GridListWidget(
                    json: _toJson(listFilms), isFilm: true);
            }
            return const Text('In construction');
          });
    }

    String _toJson(ListFilms listFilms) {
      String jsonFilms = filmsToJson(listFilms);
      return jsonFilms;
    }
}
