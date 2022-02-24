// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FilmStore on _FilmStoreBase, Store {
  Computed<List<StarWarsFilmEntity>>? _$filmListComputed;

  @override
  List<StarWarsFilmEntity> get filmList => (_$filmListComputed ??=
          Computed<List<StarWarsFilmEntity>>(() => super.filmList,
              name: '_FilmStoreBase.filmList'))
      .value;
  Computed<bool>? _$isFavoriteComputed;

  @override
  bool get isFavorite =>
      (_$isFavoriteComputed ??= Computed<bool>(() => super.isFavorite,
              name: '_FilmStoreBase.isFavorite'))
          .value;

  final _$listAtom = Atom(name: '_FilmStoreBase.list');

  @override
  List<StarWarsFilmEntity> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<StarWarsFilmEntity> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$favoriteAtom = Atom(name: '_FilmStoreBase.favorite');

  @override
  bool get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(bool value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  final _$fillAsyncAction = AsyncAction('_FilmStoreBase.fill');

  @override
  Future<void> fill() {
    return _$fillAsyncAction.run(() => super.fill());
  }

  final _$deleteDataFromStorageAsyncAction =
      AsyncAction('_FilmStoreBase.deleteDataFromStorage');

  @override
  Future<void> deleteDataFromStorage(String name) {
    return _$deleteDataFromStorageAsyncAction
        .run(() => super.deleteDataFromStorage(name));
  }

  final _$saveDataOnStorageAsyncAction =
      AsyncAction('_FilmStoreBase.saveDataOnStorage');

  @override
  Future<void> saveDataOnStorage(String name) {
    return _$saveDataOnStorageAsyncAction
        .run(() => super.saveDataOnStorage(name));
  }

  final _$likeItAsyncAction = AsyncAction('_FilmStoreBase.likeIt');

  @override
  Future<void> likeIt(bool value, String name) {
    return _$likeItAsyncAction.run(() => super.likeIt(value, name));
  }

  @override
  String toString() {
    return '''
list: ${list},
favorite: ${favorite},
filmList: ${filmList},
isFavorite: ${isFavorite}
    ''';
  }
}
