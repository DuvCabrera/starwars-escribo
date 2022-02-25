import 'package:avatar_module/avatar_module.dart';
import 'package:character_module/character_module.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:favorite_module/favorite_module.dart';
import 'package:film_module/film_module.dart';
import 'package:home_module/home_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home/', module: HomeModular()),
        ModuleRoute("/avatar-change", module: AvatarModular()),
        ModuleRoute('/character/', module: CharacterModular()),
        ModuleRoute('/favorite/', module: FavoriteModular()),
        ModuleRoute('/film/', module: FilmModular()),
      ];
}
