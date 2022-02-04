
import 'package:starwars_app/models/character.dart';

abstract class ICharacterRepository {
  Future<ListCharacter> getCharacters();
}