import 'package:flutter/material.dart';

import '../../store/store.dart';
import 'components/body.dart';

class FavoriteListingPage extends StatelessWidget {
  const FavoriteListingPage({Key? key, required this.store}) : super(key: key);

  final FavoriteStore store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(store: store),
    );
  }
}
