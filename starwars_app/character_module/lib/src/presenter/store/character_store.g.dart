// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharacterStore on _CharacterStoreBase, Store {
  Computed<List<Map<String, dynamic>>>? _$listFavoriteComputed;

  @override
  List<Map<String, dynamic>> get listFavorite => (_$listFavoriteComputed ??=
          Computed<List<Map<String, dynamic>>>(() => super.listFavorite,
              name: '_CharacterStoreBase.listFavorite'))
      .value;

  final _$favoriteAtom = Atom(name: '_CharacterStoreBase.favorite');

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

  final _$dbListAtom = Atom(name: '_CharacterStoreBase.dbList');

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

  final _$fillAsyncAction = AsyncAction('_CharacterStoreBase.fill');

  @override
  Future<void> fill() {
    return _$fillAsyncAction.run(() => super.fill());
  }

  final _$fillFavotireAsyncAction =
      AsyncAction('_CharacterStoreBase.fillFavotire');

  @override
  Future<void> fillFavotire() {
    return _$fillFavotireAsyncAction.run(() => super.fillFavotire());
  }

  final _$deleteDataFromStorageAsyncAction =
      AsyncAction('_CharacterStoreBase.deleteDataFromStorage');

  @override
  Future<void> deleteDataFromStorage(String name) {
    return _$deleteDataFromStorageAsyncAction
        .run(() => super.deleteDataFromStorage(name));
  }

  final _$saveDataOnStorageAsyncAction =
      AsyncAction('_CharacterStoreBase.saveDataOnStorage');

  @override
  Future<void> saveDataOnStorage(String name) {
    return _$saveDataOnStorageAsyncAction
        .run(() => super.saveDataOnStorage(name));
  }

  final _$likeItAsyncAction = AsyncAction('_CharacterStoreBase.likeIt');

  @override
  Future<void> likeIt(Map<String, dynamic> favoriteFromClick) {
    return _$likeItAsyncAction.run(() => super.likeIt(favoriteFromClick));
  }

  final _$_CharacterStoreBaseActionController =
      ActionController(name: '_CharacterStoreBase');

  @override
  bool isFavorite(String name) {
    final _$actionInfo = _$_CharacterStoreBaseActionController.startAction(
        name: '_CharacterStoreBase.isFavorite');
    try {
      return super.isFavorite(name);
    } finally {
      _$_CharacterStoreBaseActionController.endAction(_$actionInfo);
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
