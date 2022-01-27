import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'components/body.dart';

class OfficialSitePage extends StatefulWidget {
  const OfficialSitePage({Key? key}) : super(key: key);

  @override
  State<OfficialSitePage> createState() => _OfficialSitePageState();
}

class _OfficialSitePageState extends State<OfficialSitePage> {
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyWidget(),
    );
  }
}
