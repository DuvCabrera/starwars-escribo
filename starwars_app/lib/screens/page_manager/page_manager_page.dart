import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/models/providers/favorite_list.dart';
import 'package:starwars_app/screens/avatar_change/avatar_change_page.dart';
import 'package:starwars_app/screens/character_listing/character_listing_page.dart';
import 'package:starwars_app/screens/favorites_list/favorites_list_page.dart';
import 'package:starwars_app/screens/films_listing/films_listing_page.dart';
import 'package:starwars_app/screens/official_site/official_site_page.dart';

class PageManagerPage extends StatefulWidget {
  const PageManagerPage({Key? key}) : super(key: key);

  @override
  _PageManagerPageState createState() => _PageManagerPageState();
}

class _PageManagerPageState extends State<PageManagerPage> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<FavoriteListProvider>(context);
    prov.changeFavoriteListViewModel.init();
    int currentIndex = 0;
    final List<Widget> pages = [
      const FilmsListingPage(),
      const CharacterListingPage(),
      const FavoriteListPage()
    ];
    return DefaultTabController(
      initialIndex: currentIndex,
      length: 3,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(150),
            child: AppBar(
              title: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OfficialSitePage()));
                  },
                  child: const Text(
                    'Site Oficial',
                    style: TextStyle(color: Colors.amber),
                  )),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AvatarChangePage()));
                  },
                  child: FluttermojiCircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                  ),
                )
              ],
              bottom: TabBar(
                  indicator: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white54),
                  tabs: const [
                    Tab(
                      text: 'Filmes',
                    ),
                    Tab(
                      text: 'Personagens',
                    ),
                    Tab(
                      text: 'Favoritos',
                    )
                  ]),
            ),
          ),
          body: TabBarView(
            children: pages,
          )),
    );
  }
}
