import 'package:http/http.dart';
import 'package:starwars_app/models/character.dart';

import '../web_client.dart';

class CharacterWebClient{
  Future<ListCharacter> getCharacters() async {
    final Response response = await client.get(Uri.parse(baseUrl + allPeople));
    ListCharacter characters = listCharacterFromJson(response.body);
    return characters;
  }
}
