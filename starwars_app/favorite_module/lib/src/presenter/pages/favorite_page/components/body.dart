import 'package:favorite_module/src/presenter/pages/favorite_page/components/favorite_listing.dart';
import 'package:flutter/material.dart';

import '../../../store/store.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key, required this.store}) : super(key: key);

  final FavoriteStore store;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height - 180,
        child: FavoriteListingWidget(store: store),
      ),
    );
  }
}
