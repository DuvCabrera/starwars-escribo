import 'package:character_module/character_module.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:favorite_module/favorite_module.dart';
import 'package:film_module/film_module.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final List<Widget> pages = [
      FilmListingPage(store: Modular.get()),
      CharacterListingPage(store: Modular.get()),
      FavoriteListingPage(store: Modular.get())
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
                    Modular.to.navigate('/officialsite');
                  },
                  child: const Text(
                    'Site Oficial',
                    style: TextStyle(color: Colors.amber),
                  )),
              actions: [
                GestureDetector(
                  onTap: () {
                    Modular.to.navigate('/avatar-change');
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
          body: const TabBarView(children: [
            RouterOutlet(),
          ])),
    );
  }
}
