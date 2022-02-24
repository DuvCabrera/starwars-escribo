import 'package:database_module/database_module.dart';
import 'package:dependency_module/dependency_module.dart';

import 'package:mobx/mobx.dart';

import '../../domain/domain.dart';

part 'film_store.g.dart';

class FilmStore = _FilmStoreBase with _$FilmStore;

abstract class _FilmStoreBase with Store {
  final IRequestFilmList requestFilms;
  final ICreate create;
  final IDelete delete;
  final IRead read;

  _FilmStoreBase(
      {required this.requestFilms,
      required this.create,
      required this.delete,
      required this.read});

  @observable
  List<StarWarsFilmEntity> list = [];

  @observable
  bool favorite = false;

  @computed
  List<StarWarsFilmEntity> get filmList => list;

  @computed
  bool get isFavorite => favorite;

  @action
  Future<void> fill() async {
    list = await requestFilms();
  }

  @action
  Future<void> deleteDataFromStorage(String name) async {
    final List<Map<String, dynamic>> dbList =
        await read.get(tableName: 'starwars');
    final data = dbList.where((e) => e['name'] == name).toList();
    delete.delete(tableName: 'starwars', id: data[0]['id']);
  }

  @action
  Future<void> saveDataOnStorage(String name) async {
    final Map<String, dynamic> data = {
      'id': null,
      'name': name,
      'type': 'film'
    };
    await create.create(tableName: 'starwars', data: data);
  }

  @action
  Future<void> likeIt(bool value, String name) async {
    favorite = value;
    favorite == true
        ? await saveDataOnStorage(name)
        : await deleteDataFromStorage(name);
  }
}
