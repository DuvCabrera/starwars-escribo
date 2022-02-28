import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import 'package:star_wars_app_new/app/app_module.dart';
import 'package:star_wars_app_new/app/app_widget.dart';

main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
