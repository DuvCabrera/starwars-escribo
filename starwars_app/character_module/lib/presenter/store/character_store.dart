import 'package:database_module/database_module.dart';
import 'package:dependency_module/dependency_module.dart';

import 'package:mobx/mobx.dart';

import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';

part 'character_store.g.dart';

class CharacterStore = _CharacterStoreBase with _$CharacterStore;

abstract class _CharacterStoreBase with Store {
  final IRequestCharacterList requestCharacters;
  final ICreate create;
  final IDelete delete;
  final IRead read;

  _CharacterStoreBase(
      {required this.requestCharacters,
      required this.create,
      required this.delete,
      required this.read});

  @observable
  List<StarWarsCharacterEntity> list = [];

  @observable
  bool favorite = false;

  @computed
  List<StarWarsCharacterEntity> get characterList => list;

  @computed
  bool get isFavorite => favorite;

  @action
  Future<void> fill() async {
    list = await requestCharacters();
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
      'type': 'character'
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
