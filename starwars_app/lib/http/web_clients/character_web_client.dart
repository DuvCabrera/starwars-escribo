import 'package:http/http.dart';
import 'package:starwars_app/models/character.dart';

import '../web_client.dart';

class CharacterWebClient {


  Future request(pageNumber) async {
    final Response response = await client.get(Uri.parse(baseUrl + allPeople + page + pageNumber));
    ListCharacter characters = listCharacterFromJson(response.body);
    return characters;
  }


  Future get() async {
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

