import 'package:avatar_module/src/infra/infra.dart';

import '../../domain/domain.dart';

class CreateAvatar extends ICreateAvatar {
  final ILocalStorageRepository repository;
  final String tableName;

  CreateAvatar({required this.repository, required this.tableName});

  @override
  Future<void> create({required AvatarEntity entity}) async {
    final Map<String, dynamic> data =
        RemoteAvatarModel.fromDomain(entity).toMap();
    await repository.insert(tableName: tableName, data: data);
  }
}
