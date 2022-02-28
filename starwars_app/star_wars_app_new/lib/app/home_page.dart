import 'package:dependency_module/dependency_module.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/film');
    Size size = MediaQuery.of(context).size;
    final leadingBar = SizedBox(
        height: size.height * 0.1,
        width: size.width,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: ListTile(
              title: const Text('Filmes'),
              onTap: () => Modular.to.navigate('/film'),
            ),
          ),
          Expanded(
            child: ListTile(
              title: const Text('Personagens'),
              onTap: () => Modular.to.navigate('/character'),
            ),
          ),
          Expanded(
            child: ListTile(
              title: const Text('Favoritos'),
              onTap: () => Modular.to.navigate('/favorite'),
            ),
          ),
        ]));

    return Scaffold(
      appBar: AppBar(
        title: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Modular.to.pushNamed('/official-site');
            },
            child: const Text(
              'Site Oficial',
              style: TextStyle(color: Colors.amber),
            )),
        actions: [
          GestureDetector(
            onTap: () {
              Modular.to.pushNamed('/avatar-change');
            },
            child: FluttermojiCircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          leadingBar,
          Container(width: 2, color: Colors.black45),
          const Expanded(child: RouterOutlet())
        ],
      ),
    );
  }
}
