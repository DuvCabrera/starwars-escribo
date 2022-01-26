import 'package:flutter/material.dart';
import 'package:starwars_app/screens/page_manager/page_manager_page.dart';

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
      home: PageManagerPage(),
    );
  }
}

