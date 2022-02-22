abstract class IUpdate {
  Future<void> update(
      {required String tableName, required String json, required int id});
}
