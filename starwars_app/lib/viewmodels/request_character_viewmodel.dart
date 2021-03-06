import 'package:flutter/material.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/repository/character_repository.dart';
import 'package:starwars_app/repository/character_repository_interface.dart';
import 'package:starwars_app/services/htpp_client_service.dart';

class RequestCharacterViewModel extends ChangeNotifier{

  ICharacterRepository repository = CharacterRepository(HttpClientService());

  ListCharacter? listCharacter;

  fill() async {
    try{
      listCharacter = await repository.getCharacters();
      notifyListeners();
    }catch (e) {
      print(e);
    }
  }
}