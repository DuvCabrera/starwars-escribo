import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:starwars_app/screens/avatar_change/avatar_change_page.dart';

class PageManagerPage extends StatefulWidget {
  const PageManagerPage({Key? key}) : super(key: key);

  @override
  _PageManagerPageState createState() => _PageManagerPageState();
}

class _PageManagerPageState extends State<PageManagerPage> {



  @override
  Widget build(BuildContext context) {
    bool onAvatar = false;
    bool onSite = false;
    int currentIndex = 0;
    final List<Widget> pages = [AvatarChangePage(),AvatarChangePage(),AvatarChangePage()];

    return DefaultTabController(
      initialIndex: currentIndex,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            title: ElevatedButton(onPressed: () {}, child: Text('Site Oficial')),
            actions: [
              GestureDetector(onTap: () {}, child: FluttermojiCircleAvatar(radius: 50,backgroundColor: Colors.black,),)
            ],
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              )
            ]),
          ),
        ),
        body: TabBarView(children: pages,)
      ),
    );
  }
}
