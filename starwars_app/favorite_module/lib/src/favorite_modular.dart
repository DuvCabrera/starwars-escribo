import 'package:database_module/database_module.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:favorite_module/src/presenter/presenter.dart';

import 'domain/usecases/usecases.dart';
import 'external/external.dart';
import 'infra/infra.dart';

class FavoriteModular extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) =>
                FavoriteListingPage(store: Modular.get<FavoriteStore>()))
      ];

  @override
  List<Bind<Object>> get binds => [
        // External
        Bind<ILocalDatabase>((i) => LocalDatabase(i())),
        Bind<ILocalStorageRepository>((i) => LocalStorageRepository(i())),

        // Infra
        Bind<IRequestFavoriteList>(
            (i) => RequestFavoriteList(repository: i(), tableName: 'starwars')),

        //Domain
        Bind<FavoriteStore>((i) => FavoriteStore(requestFavorite: i())),
      ];

  @override
  List<Module> get imports => [DataBaseModular()];
}
