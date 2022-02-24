import 'package:character_module/character_module.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:favorite_module/favorite_module.dart';
import 'package:film_module/film_module.dart';
import 'package:home_module/src/features/official_site/presenter/pages/official_site_page.dart';

import 'presenter/pages/pages.dart';

class HomeModular extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/officialsite',
            child: (context, args) => const OfficialSitePage()),
        ModuleRoute('/film/', module: FilmModular()),
        ModuleRoute('/character/', module: CharacterModular()),
        ModuleRoute('/favorite/', module: FavoriteModular())
      ];

  @override
  List<Bind<Object>> get binds => [];
}