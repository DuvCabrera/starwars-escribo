import 'package:dependency_module/dependency_module.dart';

import 'package:mobx/mobx.dart';

import '../../domain/domain.dart';

part 'favorite_store.g.dart';

class FavoriteStore = _FavoriteStoreBase with _$FavoriteStore;

abstract class _FavoriteStoreBase with Store {
  final IRequestFavoriteList requestFavorite;

  _FavoriteStoreBase({
    required this.requestFavorite,
  });

  @observable
  List<StarWarsFavoriteEntity> list = [];

  @computed
  List<StarWarsFavoriteEntity> get filmList => list;

  @action
  Future<void> fill() async {
    list = await requestFavorite();
  }
}
