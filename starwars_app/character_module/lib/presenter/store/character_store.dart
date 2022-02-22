import 'package:mobx/mobx.dart';

import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';

part 'character_store.g.dart';

class CharacterStore = _CharacterStoreBase with _$CharacterStore;

abstract class _CharacterStoreBase with Store {
  final IRequestCharacterList requestCharacters;

  _CharacterStoreBase(this.requestCharacters);

  @observable
  List<StarWarsCharacterEntity> list = [];

  @computed
  List<StarWarsCharacterEntity> get characterList => list;

  @action
  Future<void> fill() async {
    list = await requestCharacters();
  }
}
