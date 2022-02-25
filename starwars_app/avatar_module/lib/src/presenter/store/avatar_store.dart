import 'package:dependency_module/dependency_module.dart';

import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';

part 'avatar_store.g.dart';

class AvatarStore = _AvatarStoreBase with _$AvatarStore;

abstract class _AvatarStoreBase with Store {
  final ICreateAvatar create;
  final IDeleteAvatar delete;
  final IReadAvatar read;
  final IUpdateAvatar update;
  final FluttermojiFunctions functions = FluttermojiFunctions();

  _AvatarStoreBase(
      {required this.create,
      required this.delete,
      required this.read,
      required this.update});

  @observable
  late AvatarEntity? avatar;

  @computed
  AvatarEntity? get avatarGet => avatar;

  @action
  Future<void> fill() async {
    avatar = await read.get();
    startAvatar();
  }

  @action
  Future<void> startAvatar() async {
    AvatarEntity avatar =
        AvatarEntity(avatar: await functions.encodeMySVGtoString());
    if (isEmpty()) {
      await create.create(entity: avatar);
    } else {
      await update.update(entity: avatar);
    }
  }

  @action
  Future<void> deleteDataFromStorage(String name) async {
    await delete.delete();
  }

  @action
  Future<void> saveDataOnStorage(AvatarEntity entity) async {
    await create.create(entity: entity);
  }

  @action
  bool isEmpty() {
    return avatarGet != null ? true : false;
  }
}
