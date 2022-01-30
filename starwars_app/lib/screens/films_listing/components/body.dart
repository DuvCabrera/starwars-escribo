import 'package:flutter/material.dart';
import 'package:starwars_app/screens/films_listing/components/films_listing.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height -180,
        child: const FilmsListingWidget(),
      ),
    );
  }
}
