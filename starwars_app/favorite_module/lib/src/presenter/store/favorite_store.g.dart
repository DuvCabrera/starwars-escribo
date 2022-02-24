// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoriteStore on _FavoriteStoreBase, Store {
  Computed<List<StarWarsFavoriteEntity>>? _$filmListComputed;

  @override
  List<StarWarsFavoriteEntity> get filmList => (_$filmListComputed ??=
          Computed<List<StarWarsFavoriteEntity>>(() => super.filmList,
              name: '_FavoriteStoreBase.filmList'))
      .value;

  final _$listAtom = Atom(name: '_FavoriteStoreBase.list');

  @override
  List<StarWarsFavoriteEntity> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<StarWarsFavoriteEntity> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$fillAsyncAction = AsyncAction('_FavoriteStoreBase.fill');

  @override
  Future<void> fill() {
    return _$fillAsyncAction.run(() => super.fill());
  }

  @override
  String toString() {
    return '''
list: ${list},
filmList: ${filmList}
    ''';
  }
}
