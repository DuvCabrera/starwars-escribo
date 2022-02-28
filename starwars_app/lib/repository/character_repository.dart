import 'package:starwars_app/services/web_client.dart';
import 'package:starwars_app/interfaces/http_client_interface.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/repository/character_repository_interface.dart';

class CharacterRepository implements ICharacterRepository {
  final IHttpClient http;

  CharacterRepository(this.http);

  Future<ListCharacter> request(pageNumber) async {
    final map = await http.get(baseUrl + allPeople + page + pageNumber);
    ListCharacter characters = ListCharacter.fromMap(map);
    return characters;
  }



  @override
  Future<ListCharacter> getCharacters() async {
    int numberOfPages = 10;
    int count = 1;
    List<Character> addCharacter = [];
    while(count < numberOfPages){
      ListCharacter characters = await request(count.toString());
      for (Character char in characters.characters){
        addCharacter.add(char);
      }
      count ++;
    }
    ListCharacter character = ListCharacter(addCharacter);
    return character;
  }

}