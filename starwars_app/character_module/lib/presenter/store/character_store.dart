import 'package:database_module/database_module.dart';

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
  void likeIt(bool value) {
    favorite = value;
  }
}
