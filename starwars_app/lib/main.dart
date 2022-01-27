import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/screens/page_manager/page_manager_page.dart';

import 'models/favorite_list.dart';

void main() {
  runApp(const StarWarsApp());
}

class StarWarsApp extends StatelessWidget {
  const StarWarsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StarWars',
      theme: ThemeData(
        brightness: Brightness.dark,

      ),
      home: ChangeNotifierProvider(create: (BuildContext context) => FavoriteList(),child: const PageManagerPage() ,),
    );
  }
}

