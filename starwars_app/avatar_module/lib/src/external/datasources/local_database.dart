abstract class ILocalDatabase {
  Future<List<Map<String, dynamic>>> getData(String tableName);

  Future<void> updateData(
      {required String tableName, required Map<String, dynamic> data, int? id});

  Future<void> deleteData({required String tableName, int? id});

  Future<void> createData(
      {required String tableName, required Map<String, dynamic> data});
}
