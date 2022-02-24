import '../entities/entities.dart';

abstract class IRequestFavoriteList {
  Future<List<StarWarsFavoriteEntity>> call();
}
