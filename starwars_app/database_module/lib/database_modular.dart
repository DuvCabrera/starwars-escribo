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
        Bind((i) => AppDatabase()),
        Bind((i) => DataBaseAdapter(i())),

        // Infra
        Bind<IDataBaseRepository>((i) => DataBaseRepository(database: i())),

        // Domain
        Bind<ICreate>((i) => Create(repository: i())),
        Bind<IDelete>((i) => Delete(repository: i())),
        Bind<IRead>((i) => Read(repository: i())),
        Bind<IUpdate>((i) => Update(repository: i())),
      ];
}
