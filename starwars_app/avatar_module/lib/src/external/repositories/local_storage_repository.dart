import '../../infra/repositories/repositories.dart';
import '../datasources/datasources.dart';

class LocalStorageRepository extends ILocalStorageRepository {
  final ILocalDatabase database;

  LocalStorageRepository(this.database);

  @override
  Future<void> delete({required String tableName, int? id}) async {
    await database.deleteData(tableName: tableName, id: id);
  }

  @override
  Future<List<Map<String, dynamic>>> get(String tableName) async {
    final List<Map<String, dynamic>> list = await database.getData(tableName);
    return list;
  }

  @override
  Future<void> insert(
      {required String tableName, required Map<String, dynamic> data}) async {
    await database.createData(tableName: tableName, data: data);
  }

  @override
  Future<void> update(
      {required String tableName,
      required Map<String, dynamic> data,
      int? id}) async {
    await database.updateData(tableName: tableName, data: data, id: id);
  }
}
