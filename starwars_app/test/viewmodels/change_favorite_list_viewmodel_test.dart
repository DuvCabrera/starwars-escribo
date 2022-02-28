

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:starwars_app/interfaces/local_storage_interface.dart';
import 'package:starwars_app/models/favorite.dart';
import 'package:starwars_app/viewmodels/change_favorite_list_viewmodel.dart';

import 'change_favorite_list_viewmodel_test.mocks.dart';

@GenerateMocks([ILocalStorage])
main() {
  var mock = MockILocalStorage();
  final ChangeFavoriteListViewModel viewModel = ChangeFavoriteListViewModel(storage: mock);

  test('init is a success',() async {
    when(mock.getAll()).thenAnswer((realInvocation) async => [Favorite('json', 'film')]);
    await viewModel.init();

    expect(viewModel.config.favorites.length, 1);
    expect(viewModel.config.favorites, isA<List<Favorite>>());
  });

  test('init is a failure',() async {
    when(mock.getAll()).thenAnswer((_) async => <Favorite> []);

    await viewModel.init();
    expect(viewModel.config.favorites, []);

  });
}