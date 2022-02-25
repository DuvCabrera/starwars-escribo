import 'package:dependency_module/dependency_module.dart';

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

    final leadingBar = SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: NavigationListener(builder: (context, child) {
          return Row(children: [
            ListTile(
              title: const Text('Filmes'),
              onTap: () => Modular.to.navigate('/film/'),
              selected: Modular.to.path.endsWith('/film/'),
            ),
            ListTile(
              title: const Text('Personagens'),
              onTap: () => Modular.to.navigate('/character/'),
              selected: Modular.to.path.endsWith('/character/'),
            ),
            ListTile(
              title: const Text('Favoritos'),
              onTap: () => Modular.to.navigate('/favorite/'),
              selected: Modular.to.path.endsWith('/favorite/'),
            )
          ]);
        }));

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
              // bottom: TabBar(
              //     indicator: BoxDecoration(
              //         border: Border.all(color: Colors.black),
              //         color: Colors.white54),
              //     tabs: [
              //       GestureDetector(
              //         onTap: () => Modular.to.navigate('/film/'),
              //         child: const Tab(
              //           text: 'Filmes',
              //         ),
              //       ),
              //       GestureDetector(
              //         onTap: () => Modular.to.navigate('/character/'),
              //         child: const Tab(
              //           text: 'Personagens',
              //         ),
              //       ),
              //       GestureDetector(
              //         onTap: () => Modular.to.navigate('/favorite/'),
              //         child: const Tab(
              //           text: 'Favoritos',
              //         ),
              //       )
              //     ]),
            ),
          ),
          body: Column(
            children: [leadingBar, const Expanded(child: RouterOutlet())],
          ),
        ));
  }
}
