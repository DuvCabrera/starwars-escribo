import 'package:flutter/material.dart';
import 'package:starwars_app/screens/favorites_list/components/favorite_list.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height - 180,
        child: const FavoriteListWidget(),
      ),
    );
  }
}
