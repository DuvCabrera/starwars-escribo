import '../entities/entities.dart';

abstract class IRequestCharacterList {
  Future<List<StarWarsCharacterEntity>> call();
}
