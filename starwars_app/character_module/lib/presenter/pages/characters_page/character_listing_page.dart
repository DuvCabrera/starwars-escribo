import 'package:flutter/material.dart';

import '../../store/store.dart';
import 'components/body.dart';

class CharacterListingPage extends StatelessWidget {
  const CharacterListingPage({Key? key, required this.store}) : super(key: key);

  final CharacterStore store;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyWidget(),
    );
  }
}
