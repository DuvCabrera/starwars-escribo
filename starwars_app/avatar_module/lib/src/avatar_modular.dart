import 'package:dependency_module/dependency_module.dart';

import 'domain/domain.dart';
import 'external/external.dart';
import 'infra/infra.dart';
import 'presenter/presenter.dart';

class AvatarModular extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => AvatarChangePage(store: Modular.get()))
      ];

  @override
  List<Bind<Object>> get binds => [
        // External
        Bind<ILocalDatabase>((i) => LocalDatabase(
            create: Modular.get(),
            delete: Modular.get(),
            read: Modular.get(),
            update: Modular.get())),

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
      ];
}
