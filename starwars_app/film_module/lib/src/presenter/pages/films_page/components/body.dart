import 'package:flutter/material.dart';

import '../../../../presenter/pages/films_page/components/film_listing.dart';
import '../../../store/store.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key, required this.store}) : super(key: key);

  final FilmStore store;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height - 180,
        child: FilmListingWidget(store: store),
      ),
    );
  }
}
