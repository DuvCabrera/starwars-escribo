import '../../domain/domain.dart';
import '../infra.dart';

class UpdateAvatar extends IUpdateAvatar {
  final ILocalStorageRepository repository;
  final String tableName;

  UpdateAvatar({required this.repository, required this.tableName});

  @override
  Future<void> update({required AvatarEntity entity}) async {
    final Map<String, dynamic> data =
        RemoteAvatarModel(avatar: entity.avatar).toMap();
    await repository.update(tableName: tableName, data: data);
  }
}
