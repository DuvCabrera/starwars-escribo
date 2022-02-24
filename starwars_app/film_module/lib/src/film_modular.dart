import 'package:dependency_module/dependency_module.dart';

import 'domain/domain.dart';
import 'external/external.dart';
import 'infra/repositories/repositories.dart';
import 'infra/usecases/usecases.dart';
import 'presenter/presenter.dart';

class FilmModular extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => FilmListingPage(store: Modular.get()))
      ];

  @override
  List<Bind<Object>> get binds => [
        Bind<IRemoteClient>((i) => RemoteClient()),
        Bind<IRemoteHttpClient>((i) => RemoteHttpClient(client: i())),
        Bind<IRequestFilmList>((i) =>
            RequestFilmList(client: i(), url: 'http://swapi.dev/api/films/')),
        Bind((i) => FilmStore(
            requestFilms: i(),
            create: Modular.get(),
            delete: Modular.get(),
            read: Modular.get())),
      ];
}
