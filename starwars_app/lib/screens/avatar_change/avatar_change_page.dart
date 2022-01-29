import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/models/providers/avatar.dart';

import 'components/body.dart';

class AvatarChangePage extends StatelessWidget {
  const AvatarChangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ChangeNotifierProvider(create: (BuildContext context) => AvatarProvider(),child:const BodyWidget() ,),
    );
  }
}
