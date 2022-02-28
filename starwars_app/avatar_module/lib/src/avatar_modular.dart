import 'package:database_module/database_module.dart';
import 'package:dependency_module/dependency_module.dart';

import 'domain/domain.dart';
import 'external/external.dart';
import 'infra/infra.dart';
import 'presenter/presenter.dart';

class AvatarModular extends Module {
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const AvatarChangePage())];

  @override
  List<Bind<Object>> get binds => [
        // External
        Bind<ILocalDatabase>((i) =>
            LocalDatabase(create: i(), delete: i(), read: i(), update: i())),

        // Infra
        Bind<ILocalStorageRepository>((i) => LocalStorageRepository(i())),

        // Domain
        Bind<ICreateAvatar>(
            (i) => CreateAvatar(repository: i(), tableName: 'avatar')),
        Bind<IDeleteAvatar>(
            (i) => DeleteAvatar(repository: i(), tableName: 'avatar')),
        Bind<IReadAvatar>(
            (i) => ReadAvatar(repository: i(), tableName: 'avatar')),
        Bind<IUpdateAvatar>(
            (i) => UpdateAvatar(repository: i(), tableName: 'avatar')),

        Bind<AvatarStore>((i) =>
            AvatarStore(create: i(), delete: i(), read: i(), update: i()))
      ];

  @override
  List<Module> get imports => [DataBaseModular()];
}
