import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
//  if (Platform.isAndroid) {
//    WebView.platform = SurfaceAndroidWebView();
//  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('NavigationDecision.prevent')),
        body: WebView(
          initialUrl: 'https://flutter.dev/',
          navigationDelegate: (navigationRequest) => NavigationDecision.prevent,
        ),
      ),
    );
  }
}
