import 'package:dependency_module/dependency_module.dart';

import 'presenter/pages/pages.dart';

class OfficialSiteModular extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const OfficialSitePage()),
      ];

  @override
  List<Bind<Object>> get binds => [];
}
