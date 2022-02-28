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

  List<StarWarsFilmEntity> list = [];

  @observable
  List<Map<String, dynamic>> favorite = [];

  @computed
  List<Map<String, dynamic>> get listFavorite => favorite;

  @observable
  List<Map<String, dynamic>> dbList = [];

  @action
  Future<void> fill() async {
    list = await requestFilms.request();
    dbList = await read.get(tableName: 'starwars');
    fillFavotire();
  }

  @action
  Future<void> fillFavotire() async {
    favorite = list
        .map((e) => {'name': e.name, 'isFavorite': isFavorite(e.name)})
        .toList();
  }

  List<Map<String, dynamic>> favoriteRefresh(
      String name, List<Map<String, dynamic>> list, String type) {
    List<Map<String, dynamic>> listReturn = [];
    for (var item in list) {
      if (item['name'] == name) {
        if (type == 'delete') {
          item['isFavorite'] = false;
        } else {
          item['isFavorite'] = true;
        }
      }
      listReturn.add(item);
    }
    return listReturn;
  }

  @action
  bool isFavorite(String name) {
    return dbList.any((e) => e.containsValue(name));
  }

  @action
  Future<void> deleteDataFromStorage(String name) async {
    final data = dbList.where((e) => e['name'] == name).toList();
    delete.delete(tableName: 'starwars', id: data[0]['id']);
    dbList = await read.get(tableName: 'starwars');
    favorite = favoriteRefresh(name, favorite, 'delete');
  }

  @action
  Future<void> saveDataOnStorage(String name) async {
    final Map<String, dynamic> data = {
      'id': null,
      'name': name,
      'type': 'film'
    };
    await create.create(tableName: 'starwars', data: data);
    dbList = await read.get(tableName: 'starwars');
    favorite = favoriteRefresh(name, favorite, 'save');
  }

  @action
  Future<void> likeIt(Map<String, dynamic> favoriteFromClick) async {
    favoriteFromClick['isFavorite'] == true
        ? await deleteDataFromStorage(favoriteFromClick['name'])
        : await saveDataOnStorage(favoriteFromClick['name']);
  }
}
