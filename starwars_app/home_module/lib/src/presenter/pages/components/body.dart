import 'package:flutter/material.dart';
import 'app_bar_with_button_selected.dart';
import 'web_page.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarWithButtonSelectedWidget(size: size),
          WebPageWidget(size: size)
        ],
      ),
    );
  }
}
