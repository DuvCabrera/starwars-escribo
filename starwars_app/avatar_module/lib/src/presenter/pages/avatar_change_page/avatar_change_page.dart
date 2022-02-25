import 'package:flutter/material.dart';

import '../../presenter.dart';
import 'components/body.dart';

class AvatarChangePage extends StatelessWidget {
  const AvatarChangePage({Key? key, required this.store}) : super(key: key);
  final AvatarStore store;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(store: store),
    );
  }
}
