import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:starwars_app/models/films.dart';
import 'package:starwars_app/repository/film_repository.dart';
import 'package:starwars_app/viewmodels/request_filme_viewmodel.dart';

import 'request_character_viewmodel_test.mocks.dart';

var mock = MockIHttpClient();

main (){

  final viewModel = RequestFilmViewModel();

  test('fill function error', () async {
    final mock = MockIHttpClient();
    viewModel.repository = FilmRepository(mock);

    when(mock.get(any)).thenAnswer((realInvocation) async => {} );

    await viewModel.fill();
    expect(viewModel.listFilms, null);

  });

  test('fill function success', () async {
    final mock = MockIHttpClient();
    viewModel.repository = FilmRepository(mock);

    when(mock.get(any)).thenAnswer((realInvocation) async =>  ListFilms(films: [Film(title: '', episodeId: 1, openingCrawl: 'openingCrawl', director: 'director', producer: 'producer', releaseDate: DateTime.now() , characters: [], planets: [], starships: [], vehicles: [], species: [], created: DateTime.now(), edited: DateTime.now(), url: 'url')]).toJson());

    await viewModel.fill();
    expect(viewModel.listFilms, isA<ListFilms>());
    expect(viewModel.listFilms?.films.length, 1);

  });
}