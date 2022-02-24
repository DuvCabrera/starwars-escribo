import 'package:flutter/material.dart';
import 'package:home_module/src/features/official_site/presenter/pages/components/web_page.dart';
import 'app_bar_with_button_selected.dart';

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
