import 'package:flutter/material.dart';

import 'components/body.dart';

class OfficialSitePage extends StatefulWidget {
  const OfficialSitePage({Key? key}) : super(key: key);

  @override
  State<OfficialSitePage> createState() => _OfficialSitePageState();
}

class _OfficialSitePageState extends State<OfficialSitePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyWidget(),
    );
  }
}
