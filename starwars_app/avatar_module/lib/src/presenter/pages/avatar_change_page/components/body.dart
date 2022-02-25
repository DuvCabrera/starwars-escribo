import 'package:flutter/material.dart';

import '../../../presenter.dart';
import 'app_bar_with_avatar_selected.dart';
import 'avatar_change_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key, required this.store}) : super(key: key);
  final AvatarStore store;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarWithAvatarSelected(size: size, store: store),
          AvatarChangeWidget(size: size)
        ],
      ),
    );
  }
}
