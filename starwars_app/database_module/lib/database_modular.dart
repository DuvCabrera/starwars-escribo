import 'package:database_module/external/datasources/database_adapter.dart';
import 'package:database_module/infra/infra.dart';
import 'package:dependency_module/dependency_module.dart';

import 'domain/domain.dart';
import 'external/datasources/app_database.dart';
import 'external/repositories/repositories.dart';

class DataBaseModular extends Module {
  @override
  List<Bind<Object>> get binds => [
        // External
        Bind((i) => AppDatabase(), export: true),
        Bind((i) => DataBaseAdapter(i()), export: true),

        // Infra
        Bind<IDataBaseRepository>((i) => DataBaseRepository(database: i()),
            export: true),

        // Domain
        Bind<ICreate>((i) => Create(repository: i()), export: true),
        Bind<IDelete>((i) => Delete(repository: i()), export: true),
        Bind<IRead>((i) => Read(repository: i()), export: true),
        Bind<IUpdate>((i) => Update(repository: i()), export: true),
      ];
}
