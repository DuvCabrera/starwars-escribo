// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FilmStore on _FilmStoreBase, Store {
  Computed<List<Map<String, dynamic>>>? _$listFavoriteComputed;

  @override
  List<Map<String, dynamic>> get listFavorite => (_$listFavoriteComputed ??=
          Computed<List<Map<String, dynamic>>>(() => super.listFavorite,
              name: '_FilmStoreBase.listFavorite'))
      .value;

  final _$favoriteAtom = Atom(name: '_FilmStoreBase.favorite');

  @override
  List<Map<String, dynamic>> get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(List<Map<String, dynamic>> value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  final _$dbListAtom = Atom(name: '_FilmStoreBase.dbList');

  @override
  List<Map<String, dynamic>> get dbList {
    _$dbListAtom.reportRead();
    return super.dbList;
  }

  @override
  set dbList(List<Map<String, dynamic>> value) {
    _$dbListAtom.reportWrite(value, super.dbList, () {
      super.dbList = value;
    });
  }

  final _$fillAsyncAction = AsyncAction('_FilmStoreBase.fill');

  @override
  Future<void> fill() {
    return _$fillAsyncAction.run(() => super.fill());
  }

  final _$fillFavotireAsyncAction = AsyncAction('_FilmStoreBase.fillFavotire');

  @override
  Future<void> fillFavotire() {
    return _$fillFavotireAsyncAction.run(() => super.fillFavotire());
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
  Future<void> likeIt(Map<String, dynamic> favoriteFromClick) {
    return _$likeItAsyncAction.run(() => super.likeIt(favoriteFromClick));
  }

  final _$_FilmStoreBaseActionController =
      ActionController(name: '_FilmStoreBase');

  @override
  bool isFavorite(String name) {
    final _$actionInfo = _$_FilmStoreBaseActionController.startAction(
        name: '_FilmStoreBase.isFavorite');
    try {
      return super.isFavorite(name);
    } finally {
      _$_FilmStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favorite: ${favorite},
dbList: ${dbList},
listFavorite: ${listFavorite}
    ''';
  }
}
