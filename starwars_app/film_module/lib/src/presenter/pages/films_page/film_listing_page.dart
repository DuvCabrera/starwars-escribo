import 'package:flutter/material.dart';

import '../../store/store.dart';
import 'components/body.dart';

class FilmListingPage extends StatelessWidget {
  const FilmListingPage({Key? key, required this.store}) : super(key: key);

  final FilmStore store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(store: store),
    );
  }
}
