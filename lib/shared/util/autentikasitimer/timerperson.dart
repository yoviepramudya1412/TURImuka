import 'dart:async';
import 'package:flutter/material.dart';
import 'package:TURImuka/core.dart';

import 'package:TURImuka/primary/login/view/login_view.dart';

class AuthTimer {
  static const Duration _interval = Duration(minutes: 30);

  late Timer _timer;

  void start(BuildContext context) {
    _timer = Timer.periodic(_interval, (timer) {
      // Tindakan yang dijalankan setiap 30 menit
      // Misalnya, kembali ke halaman login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginView()),
      );
    });
  }

  void cancel() {
    _timer.cancel();
  }
}

// Gunakan seperti ini untuk memulai timer
// AuthTimer().start();

// Dan jika Anda ingin membatalkannya (misalnya, ketika pengguna berhasil login)
// AuthTimer().cancel();
