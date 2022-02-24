import 'package:database_module/database_module.dart';

import '../datasources.dart';

class LocalDatabase extends ILocalDatabase {
  final IRead read;

  LocalDatabase(this.read);

  @override
  Future<List<Map<String, dynamic>>> get(String tableName) async {
    return await read.get(tableName: tableName);
  }
}
