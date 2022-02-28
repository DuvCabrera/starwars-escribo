import 'package:flutter/material.dart';

import 'app_bar_with_avatar_selected.dart';
import 'avatar_change_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarWithAvatarSelected(
            size: size,
          ),
          AvatarChangeWidget(size: size)
        ],
      ),
    );
  }
}
