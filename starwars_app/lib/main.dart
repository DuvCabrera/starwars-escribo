import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/screens/avatar_change/avatar_change_page.dart';
import 'package:starwars_app/screens/favorites_list/favorites_list_page.dart';
import 'package:starwars_app/screens/films_listing/films_listing_page.dart';
import 'package:starwars_app/screens/official_site/official_site_page.dart';
import 'package:starwars_app/screens/page_manager/page_manager_page.dart';

import 'models/providers/favorite_list.dart';

void main() {
  runApp(const StarWarsApp());
}

class StarWarsApp extends StatelessWidget {
  const StarWarsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StarWars',
      theme: ThemeData(
        brightness: Brightness.dark,

      ),routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => const PageManagerPage(),
        '/official-site': (BuildContext context) => const OfficialSitePage(),
        '/films-listing': (BuildContext context) => const FilmsListingPage(),
        '/favorite-list': (BuildContext context) => const FavoriteListPage(),
        '/avatar-change': (BuildContext context) => const AvatarChangePage(),
    },
      home: ChangeNotifierProvider(create: (BuildContext context) => FavoriteListProvider(),child: const PageManagerPage(),),
    );
  }
}

