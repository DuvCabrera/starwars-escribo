import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';

import '../repositories/repositories.dart';

import '../models/models.dart';

class ReadAvatar extends IReadAvatar {
  final ILocalStorageRepository repository;
  final String tableName;

  ReadAvatar({required this.repository, required this.tableName});

  @override
  Future<AvatarEntity?> get() async {
    final List<Map<String, dynamic>> results = await repository.get(tableName);
    try {
      final List<AvatarEntity> avatar = results
          .map<AvatarEntity>(
              (map) => RemoteAvatarModel.fromJson(map).toEntity())
          .toList();
      return avatar[0];
    } catch (e) {
      return null;
    }
  }
}
