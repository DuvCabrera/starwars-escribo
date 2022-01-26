import 'package:flutter/material.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/models/films.dart';

class GridListWidget extends StatefulWidget {
  const GridListWidget({Key? key, required this.json, required this.isFilm}) : super(key: key);
  final String json;
  final bool isFilm;

  @override
  State<GridListWidget> createState() => _GridListWidgetState();
}

class _GridListWidgetState extends State<GridListWidget> {

  late List<dynamic> list = [];

  @override
  void initState() {
    List<dynamic> temporaryList =[];
    if(widget.isFilm){
      temporaryList = filmsFromJson(widget.json).films;
    } else {
      temporaryList = listCharacterFromJson(widget.json).characters;
    }
    setState(() {
      list = temporaryList;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: list.length, itemBuilder: (context, index){
      if(widget.isFilm){
        final Film film = list[index];
        return Card();
      } else {
        final Character character = list[index];
        return Card();
      }
    });
  }
}
