import '../entities/entities.dart';

abstract class IRequestCharacter {
  Future<List<StarWarsCharacterEntity>> call();
}
