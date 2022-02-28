import 'package:favorite_module/src/presenter/pages/favorite_page/components/favorite_listing.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height - 180,
        child: const FavoriteListingWidget(),
      ),
    );
  }
}
