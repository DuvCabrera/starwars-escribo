import 'package:database_module/database_module.dart';

import '../datasources.dart';

class LocalDatabase extends ILocalDatabase {
  final IRead read;
  final ICreate create;
  final IUpdate update;
  final IDelete delete;

  LocalDatabase(
      {required this.read,
      required this.create,
      required this.update,
      required this.delete});

  @override
  Future<List<Map<String, dynamic>>> getData(String tableName) async {
    return await read.get(tableName: tableName);
  }

  @override
  Future<void> createData(
      {required String tableName, required Map<String, dynamic> data}) async {
    await create.create(tableName: tableName, data: data);
  }

  @override
  Future<void> deleteData({required String tableName, int? id}) async {
    await delete.delete(tableName: tableName, id: id);
  }

  @override
  Future<void> updateData(
      {required String tableName,
      required Map<String, dynamic> data,
      int? id}) async {
    await update.update(tableName: tableName, data: data, id: id!);
  }
}
