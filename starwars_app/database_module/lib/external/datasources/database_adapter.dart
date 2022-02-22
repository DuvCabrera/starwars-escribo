import 'package:dependency_module/dependency_module.dart';

import 'app_database.dart';

class DataBaseAdapter {
  final AppDatabase _appDatabase;

  DataBaseAdapter(this._appDatabase);

  Future<void> removeData({required String tableName, int? id}) async {
    final Database db = await _appDatabase.db;
    await db.delete(
      tableName,
      where: id == null ? null : ' id = ?',
      whereArgs: id == null ? null : [id],
    );
  }

  Future<void> saveData({
    required String tableName,
    required Map<String, dynamic> data,
  }) async {
    final Database db = await _appDatabase.db;
    if (tableName == 'starwars') {
      final existingRelation = await db.query(
        'starwars',
        where: 'id = ?',
        whereArgs: [data['id']],
      );

      if (existingRelation.isEmpty) {
        await db.insert(tableName, data);
      }
    }

    if (tableName == 'avatar') {
      final existingRelation = await db.query(
        'avatar',
        where: 'id = ?',
        whereArgs: [data['id']],
      );

      if (existingRelation.isEmpty) {
        db.insert(tableName, data);
      }
    }

    final alreadyExists = data['id'] != null
        ? await db.query(
            tableName,
            where: 'id = ?',
            whereArgs: [data['id'] as int],
          )
        : [];

    if (alreadyExists.isNotEmpty) {
      await updateData(id: data['id'] as int, data: data, tableName: tableName);
    } else {
      await db.insert(tableName, data);
    }
  }

  Future<void> updateData({
    required int id,
    required Map<String, dynamic> data,
    required String tableName,
  }) async {
    final Database db = await _appDatabase.db;

    await db.update(tableName, data, where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> readData(
      {required String tableName}) async {
    final Database db = await _appDatabase.db;
    final result = await db.query(tableName);
    return result;
  }
}
