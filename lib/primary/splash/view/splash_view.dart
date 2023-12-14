import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:TURImuka/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: Image.asset(
          "asset/image/logo_usk.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          fit: BoxFit.contain,
        ).animate().fadeIn(duration: 2000.ms),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
