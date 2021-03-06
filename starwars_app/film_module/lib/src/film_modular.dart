import 'package:database_module/database_module.dart';
import 'package:dependency_module/dependency_module.dart';

import 'domain/domain.dart';
import 'external/external.dart';
import 'infra/repositories/repositories.dart';
import 'infra/usecases/usecases.dart';
import 'presenter/presenter.dart';

class FilmModular extends Module {
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const FilmListingPage())];

  @override
  List<Bind<Object>> get binds => [
        Bind<IRemoteClient>((i) => RemoteClient()),
        Bind<IRemoteHttpClient>((i) => RemoteHttpClient(client: i())),
        Bind<IRequestFilmList>((i) =>
            RequestFilmList(client: i(), url: 'http://swapi.dev/api/films/')),
        Bind<FilmStore>((i) =>
            FilmStore(requestFilms: i(), create: i(), delete: i(), read: i())),
      ];

  @override
  List<Module> get imports => [DataBaseModular()];
}
