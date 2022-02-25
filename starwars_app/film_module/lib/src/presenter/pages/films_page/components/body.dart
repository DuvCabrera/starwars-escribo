import 'package:flutter/material.dart';

import '../../../../presenter/pages/films_page/components/film_listing.dart';


class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key,}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height - 180,
        child: const FilmListingWidget(),
      ),
    );
  }
}
