import 'package:mobx/mobx.dart';

import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';

class CharacterStoreClassic {
  final IRequestCharacterList requestCharacters;
  late Action fill;
  CharacterStoreClassic(this.requestCharacters) {
    fill = Action(_fill);
  }

  Observable<List<StarWarsCharacterEntity>> list =
      Observable<List<StarWarsCharacterEntity>>([]);

  List<StarWarsCharacterEntity> get listCharacter => list.value;

  Future<void> _fill() async {
    list.value = await requestCharacters();
  }
}
