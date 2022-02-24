abstract class ILocalStorageRepository {
  Future<List<Map<String, dynamic>>> call(String tableName);
}
