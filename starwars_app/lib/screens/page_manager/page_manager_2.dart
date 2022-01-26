import 'package:flutter/material.dart';
import 'package:starwars_app/screens/avatar_change/avatar_change_page.dart';

class PageManager2 extends StatefulWidget {
  const PageManager2({Key? key}) : super(key: key);

  @override
  _PageManager2State createState() => _PageManager2State();
}

class _PageManager2State extends State<PageManager2> {
  int currentIndex = 0;
  final List<Widget> pages = [AvatarChangePage()];
  @override
  Widget build(BuildContext context) {
    return ListView(children: [pages[currentIndex]],);
  }
}
