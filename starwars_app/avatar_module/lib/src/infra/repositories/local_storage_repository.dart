abstract class ILocalStorageRepository {
  Future<List<Map<String, dynamic>>> get(String tableName);

  Future<void> insert(
      {required String tableName, required Map<String, dynamic> data});

  Future<void> update(
      {required String tableName, required Map<String, dynamic> data, int? id});

  Future<void> delete({required String tableName, int? id});
}
