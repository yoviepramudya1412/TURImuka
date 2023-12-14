// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:TURImuka/core.dart';
import '../view/splash_view.dart';

class SplashController extends State<SplashView> {
  static late SplashController instance;
  late SplashView view;

  @override
  void initState() {
    instance = this;

    super.initState();
    initSplash();
  }

  initSplash() async {
    await Future.delayed(const Duration(seconds: 3)); // Delay selama 3 detik

    checkIntroStatus();
  }

  checkIntroStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isIntroShown = prefs.getBool('introShown') ?? false;
    if (isIntroShown) {
      // Intro sudah ditampilkan sebelumnya, navigasikan ke halaman berikutnya (misalnya halaman utama aplikasi)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const LoginView()), // Ganti NextScreen dengan halaman berikutnya setelah intro
      );
    } else {
      // Intro belum ditampilkan, navigasikan ke halaman intro
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const IntroView()),
      );

      // Simpan status bahwa intro sudah ditampilkan
      prefs.setBool('introShown', true);
    }
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
