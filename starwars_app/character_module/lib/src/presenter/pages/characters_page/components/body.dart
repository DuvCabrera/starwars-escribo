import 'package:flutter/material.dart';

import '../../../presenter.dart';
import 'character_listing.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key, required this.store}) : super(key: key);

  final CharacterStore store;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height - 180,
        child: CharacterListingWidget(store: store),
      ),
    );
  }
}
