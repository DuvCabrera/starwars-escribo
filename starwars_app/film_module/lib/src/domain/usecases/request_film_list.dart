import '../entities/entities.dart';

abstract class IRequestFilmList {
  Future<List<StarWarsFilmEntity>> call();
}
