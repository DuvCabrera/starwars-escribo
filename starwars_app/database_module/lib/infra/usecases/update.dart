import '../../domain/domain.dart';
import '../repositories/repositories.dart';

class Update implements IUpdate {
  final IDataBaseRepository repository;

  Update({required this.repository});

  @override
  Future<void> update(
      {required String tableName,
      required String json,
      required int id}) async {
    await repository.update(tableName: tableName, json: json, id: id);
  }
}
