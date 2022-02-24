// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharacterStore on _CharacterStoreBase, Store {
  Computed<List<StarWarsCharacterEntity>>? _$characterListComputed;

  @override
  List<StarWarsCharacterEntity> get characterList =>
      (_$characterListComputed ??= Computed<List<StarWarsCharacterEntity>>(
              () => super.characterList,
              name: '_CharacterStoreBase.characterList'))
          .value;

  final _$listAtom = Atom(name: '_CharacterStoreBase.list');

  @override
  List<StarWarsCharacterEntity> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<StarWarsCharacterEntity> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$fillAsyncAction = AsyncAction('_CharacterStoreBase.fill');

  @override
  Future<void> fill() {
    return _$fillAsyncAction.run(() => super.fill());
  }

  @override
  String toString() {
    return '''
list: ${list},
characterList: ${characterList}
    ''';
  }
}
