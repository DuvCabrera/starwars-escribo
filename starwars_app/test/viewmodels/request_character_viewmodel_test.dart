import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:starwars_app/interfaces/http_client_interface.dart';
import 'package:starwars_app/models/character.dart';
import 'package:starwars_app/repository/character_repository.dart';
import 'package:starwars_app/viewmodels/request_character_viewmodel.dart';

import 'request_character_viewmodel_test.mocks.dart';


@GenerateMocks([IHttpClient])


main(){

  test('fill function error', () async {
    final mock = MockIHttpClient();
    RequestCharacterViewModel viewModel = RequestCharacterViewModel();
    viewModel.repository = CharacterRepository(mock);

    when(mock.get(any)).thenAnswer((realInvocation) async => {} );

    await viewModel.fill();
    expect(viewModel.listCharacter, null);

  });

  test('fill function success', () async {
    final mock = MockIHttpClient();
    RequestCharacterViewModel viewModel = RequestCharacterViewModel();
    viewModel.repository = CharacterRepository(mock);

    when(mock.get(any)).thenAnswer((realInvocation) async =>  ListCharacter([Character(name: 'aa', homeworld: 'dd', vehicles: [], gender: '', birthYear: '', eyeColor: '', url: '', starships: [], films: [], skinColor: '', edited: DateTime.now() , height: '', mass: '', created: DateTime.now(), hairColor: '', species: [])]).toJson());

    await viewModel.fill();
    expect(viewModel.listCharacter, isA<ListCharacter>());
    expect(viewModel.listCharacter?.characters.length, 9);

  });
}

