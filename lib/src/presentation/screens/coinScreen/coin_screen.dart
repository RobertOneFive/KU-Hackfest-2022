import 'package:aifiverse/src/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({Key? key}) : super(key: key);

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      gestureNavigationEnabled: true,
      backgroundColor: AppColors.backgroundColor,
      initialUrl:
          'https://62eeaf78473979764d345e6d--vocal-gelato-6b2d63.netlify.app/',
    );
  }
}
