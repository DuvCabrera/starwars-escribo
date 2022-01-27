import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebPageWidget extends StatefulWidget {
  const WebPageWidget({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  _WebPageWidgetState createState() => _WebPageWidgetState();
}

class _WebPageWidgetState extends State<WebPageWidget> {
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: widget.size.height - 150,
        child: InAppWebView(
          initialUrlRequest:
              URLRequest(url: Uri.parse('https://www.starwars.com/community')),
          onWebViewCreated: (InAppWebViewController controller) {
            inAppWebViewController = controller;
          },
        ),
      ),
    );
  }
}
