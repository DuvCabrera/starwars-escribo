import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';

import '../repositories/repositories.dart';

import '../models/models.dart';

class RequestCharacterList extends IRequestCharacterList {
  final IHttpClient client;
  final String url;
  final int numberOfPages;

  RequestCharacterList(
      {required this.client, required this.url, required this.numberOfPages});

  @override
  Future<List<StarWarsCharacterEntity>> call() async {
    int count = 1;
    final List<StarWarsCharacterEntity> characterList = [];
    while (count < numberOfPages) {
      List<StarWarsCharacterEntity> characters =
          await request(count.toString());
      for (StarWarsCharacterEntity char in characters) {
        characterList.add(char);
      }
      count++;
    }
    return characterList;
  }

  Future<List<StarWarsCharacterEntity>> request(String pageNumber) async {
    final String finalUrl = url + pageNumber;
    final map = await client.get(finalUrl);
    List<StarWarsCharacterEntity> characters = map['results']
        .map<StarWarsCharacterEntity>(
            (people) => RemoteCharacterModel.fromJson(people).toEntity())
        .toList();
    return characters;
  }
}
