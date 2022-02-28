import 'package:flutter/material.dart';

import 'components/body.dart';

class CharacterListingPage extends StatelessWidget {
  const CharacterListingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const BodyWidget()),
    );
  }
}
