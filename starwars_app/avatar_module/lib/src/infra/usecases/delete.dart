import '../../domain/domain.dart';
import '../infra.dart';

class DeleteAvatar extends IDeleteAvatar {
  final ILocalStorageRepository repository;
  final String tableName;
  final int? id;
  DeleteAvatar({required this.repository, required this.tableName, this.id});

  @override
  Future<void> delete() async {
    await repository.delete(tableName: tableName, id: id);
  }
}
