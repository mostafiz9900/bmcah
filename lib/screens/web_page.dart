import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebPage extends StatefulWidget {
  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }
    String url='https://flutter.dev';
  @override
  Widget build(BuildContext context) {
   
    return WebView(
       initialUrl: url,
       onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },

     );
  }
}
