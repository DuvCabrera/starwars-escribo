import 'package:avatar_module/avatar_module.dart';
import 'package:character_module/character_module.dart';
import 'package:database_module/database_modular.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:favorite_module/favorite_module.dart';
import 'package:film_module/film_module.dart';

import 'home_page.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage(), children: [
          ModuleRoute('/character', module: CharacterModular()),
          ModuleRoute('/favorite', module: FavoriteModular()),
          ModuleRoute('/film', module: FilmModular()),
        ]),
        ModuleRoute("/avatar-change", module: AvatarModular()),
      ];

  @override
  List<Module> get imports => [DataBaseModular()];
}
