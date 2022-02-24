import 'package:dependency_module/dependency_module.dart';

import 'domain/domain.dart';
import 'external/external.dart';
import 'infra/infra.dart';
import 'presenter/presenter.dart';

class CharacterModular extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) =>
                CharacterListingPage(store: Modular.get()))
      ];

  @override
  List<Bind<Object>> get binds => [
        Bind<IRemoteClient>((i) => RemoteClient()),
        Bind<IRemoteHttpClient>((i) => RemoteHttpClient(client: i())),
        Bind<IRequestCharacterList>((i) => RequestCharacterList(
            client: i(),
            numberOfPages: 10,
            url: 'http://swapi.dev/api/people/?page=')),
        Bind((i) => CharacterStore(
            requestCharacters: i(),
            create: Modular.get(),
            delete: Modular.get(),
            read: Modular.get())),
      ];
}
