import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/components/grid_list.dart';
import 'package:starwars_app/components/progress.dart';
import 'package:starwars_app/http/web_clients/film_web_client.dart';
import 'package:starwars_app/models/films.dart';
import 'package:starwars_app/viewmodels/request_filme_viewmodel.dart';

class FilmsListingWidget extends StatefulWidget {
  const FilmsListingWidget({Key? key}) : super(key: key);

  @override
  State<FilmsListingWidget> createState() => _FilmsListingWidgetState();
}

class _FilmsListingWidgetState extends State<FilmsListingWidget> {
  final FilmWebClient filmWebClient = FilmWebClient();

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
//FutureBuilder(
//         future: filmWebClient.get(),
//         initialData: const [],
//         builder: (BuildContext context, snapshot) {
//           switch (snapshot.connectionState) {
//             case ConnectionState.none:
//               break;
//             case ConnectionState.waiting:
//               return const ProgressWidget();
//             case ConnectionState.active:
//               break;
//             case ConnectionState.done:
//               if(snapshot.hasData){
//                 ListFilms listFilms = snapshot.data as ListFilms;
//
//                 return GridListWidget(
//                     json: _toJson(listFilms), isFilm: true);
//               } else{
//                 return const CenteredMessageWidget('Dados não foram encontrados', icon: Icons.warning_amber_outlined,);
//               }
//           }
//           return const CenteredMessageWidget('Erro Desconhecido', icon: Icons.warning_amber_outlined);
//         });
