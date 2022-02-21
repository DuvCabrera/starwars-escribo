import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/components/grid_list.dart';
import 'package:starwars_app/components/progress.dart';
import 'package:starwars_app/models/films.dart';
import 'package:starwars_app/viewmodels/request_filme_viewmodel.dart';

class FilmsListingWidget extends StatefulWidget {
  const FilmsListingWidget({Key? key}) : super(key: key);

  @override
  State<FilmsListingWidget> createState() => _FilmsListingWidgetState();
}

class _FilmsListingWidgetState extends State<FilmsListingWidget> {
  @override
  Widget build(BuildContext context) {
    var filmWeb = Provider.of<RequestFilmViewModel>(context);
    if (filmWeb.listFilms == null) {
      filmWeb.fill();
      return const ProgressWidget();
    } else {
      return GridListWidget(json: _toJson(filmWeb.listFilms!), isFilm: true);
    }
  }

  String _toJson(ListFilms listFilms) {
    String jsonFilms = filmsToJson(listFilms);
    return jsonFilms;
  }
}
