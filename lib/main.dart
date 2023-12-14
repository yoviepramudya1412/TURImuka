import 'package:TURImuka/core.dart';
import 'package:flutter/material.dart';

import 'package:TURImuka/shared/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TURImuka',
      navigatorKey: Get.navigatorKey,
      theme: DefaulTheme().getTheme(),
      home: const SplashView(),
    );
  }
}
