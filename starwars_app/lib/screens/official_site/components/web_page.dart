import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebPageWidget extends StatefulWidget {
  const WebPageWidget({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  _WebPageWidgetState createState() => _WebPageWidgetState();
}

class _WebPageWidgetState extends State<WebPageWidget> {
  double _progress = 0;
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: widget.size.height - 150,
        child: Stack(children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: Uri.parse('https://www.starwars.com/community')),
            onWebViewCreated: (InAppWebViewController controller) {
              inAppWebViewController = controller;
            },
            onProgressChanged:
                (InAppWebViewController controller, int progress) {
              setState(() {
                _progress = progress / 100;
              });
            },
          ),
          _progress < 1
              ? SizedBox(
                  height: 3,
                  child: LinearProgressIndicator(
                    value: _progress,
                    backgroundColor: Colors.amber,
                  ),
                )
              : SizedBox(),
        ]),
      ),
    );
  }
}
