abstract class ILocalDatabase {
  Future<List<Map<String, dynamic>>> get(String tableName);
}
