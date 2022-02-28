import '../../infra/repositories/repositories.dart';
import '../datasources/datasources.dart';

class LocalStorageRepository extends ILocalStorageRepository {
  final ILocalDatabase database;

  LocalStorageRepository(this.database);

  @override
  Future<List<Map<String, dynamic>>> call(String tableName) async {
    final List<Map<String, dynamic>> list = await database.get(tableName);
    return list;
  }
}
