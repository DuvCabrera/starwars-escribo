import '../../domain/domain.dart';
import '../models/models.dart';
import '../repositories/repositories.dart';

class RequestFilmList extends IRequestFilmList {
  final IRemoteHttpClient client;
  final String url;
  final int numberOfPages;

  RequestFilmList(
      {required this.client, required this.url, required this.numberOfPages});

  @override
  Future<List<StarWarsFilmEntity>> call() async {
    final Map<String, dynamic> results = await client.getFilms(url);
    final List<StarWarsFilmEntity> films = results['results']
        .map<StarWarsFilmEntity>(
            (film) => RemoteFilmModel.fromJson(film).toEntity())
        .toList();
    return films;
  }
}
