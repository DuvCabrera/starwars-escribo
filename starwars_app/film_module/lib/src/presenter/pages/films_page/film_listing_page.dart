import 'package:flutter/material.dart';

import 'components/body.dart';

class FilmListingPage extends StatelessWidget {
  const FilmListingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyWidget(),
    );
  }
}
