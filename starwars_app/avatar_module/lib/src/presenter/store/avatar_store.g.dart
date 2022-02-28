// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AvatarStore on _AvatarStoreBase, Store {
  Computed<AvatarEntity?>? _$avatarGetComputed;

  @override
  AvatarEntity? get avatarGet =>
      (_$avatarGetComputed ??= Computed<AvatarEntity?>(() => super.avatarGet,
              name: '_AvatarStoreBase.avatarGet'))
          .value;

  final _$avatarAtom = Atom(name: '_AvatarStoreBase.avatar');

  @override
  AvatarEntity? get avatar {
    _$avatarAtom.reportRead();
    return super.avatar;
  }

  @override
  set avatar(AvatarEntity? value) {
    _$avatarAtom.reportWrite(value, super.avatar, () {
      super.avatar = value;
    });
  }

  final _$fillAsyncAction = AsyncAction('_AvatarStoreBase.fill');

  @override
  Future<void> fill() {
    return _$fillAsyncAction.run(() => super.fill());
  }

  final _$startAvatarAsyncAction = AsyncAction('_AvatarStoreBase.startAvatar');

  @override
  Future<void> startAvatar() {
    return _$startAvatarAsyncAction.run(() => super.startAvatar());
  }

  final _$deleteDataFromStorageAsyncAction =
      AsyncAction('_AvatarStoreBase.deleteDataFromStorage');

  @override
  Future<void> deleteDataFromStorage(String name) {
    return _$deleteDataFromStorageAsyncAction
        .run(() => super.deleteDataFromStorage(name));
  }

  final _$saveDataOnStorageAsyncAction =
      AsyncAction('_AvatarStoreBase.saveDataOnStorage');

  @override
  Future<void> saveDataOnStorage(AvatarEntity entity) {
    return _$saveDataOnStorageAsyncAction
        .run(() => super.saveDataOnStorage(entity));
  }

  final _$_AvatarStoreBaseActionController =
      ActionController(name: '_AvatarStoreBase');

  @override
  bool isEmpty() {
    final _$actionInfo = _$_AvatarStoreBaseActionController.startAction(
        name: '_AvatarStoreBase.isEmpty');
    try {
      return super.isEmpty();
    } finally {
      _$_AvatarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
avatar: ${avatar},
avatarGet: ${avatarGet}
    ''';
  }
}
