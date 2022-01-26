import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';

class PageManagerPage extends StatefulWidget {
  const PageManagerPage({Key? key}) : super(key: key);

  @override
  _PageManagerPageState createState() => _PageManagerPageState();
}

class _PageManagerPageState extends State<PageManagerPage> {
  int currentIndex = 0;
  final List<Widget> pages = [];


  @override
  Widget build(BuildContext context) {
    bool onAvatar = false;
    bool onSite = false;

    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            title: ElevatedButton(onPressed: () {}, child: Text('Site Oficial')),
            actions: [
              GestureDetector(onTap: () {}, child: FluttermojiCircleAvatar(),)
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
        body: ListView(children: [ (onAvatar) ? Container() : Container(),]),
      ),
    );
  }
}
