import '../../domain/domain.dart';
import '../models/models.dart';
import '../repositories/repositories.dart';

class RequestFavoriteList extends IRequestFavoriteList {
  final ILocalStorageRepository repository;
  final String tableName;

  RequestFavoriteList({required this.repository, required this.tableName});

  @override
  Future<List<StarWarsFavoriteEntity>> call() async {
    final List<Map<String, dynamic>> results = await repository.call(tableName);
    final List<StarWarsFavoriteEntity> films = results
        .map<StarWarsFavoriteEntity>(
            (map) => RemoteFavoriteModel.fromJson(map).toEntity())
        .toList();
    return films;
  }
}
