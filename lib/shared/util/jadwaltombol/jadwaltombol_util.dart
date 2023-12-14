// lib/shared/util/jadwaltombol/jadwal_tombol_util.dart
import 'package:TURImuka/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class JadwalTombolUtil {
  static bool isButtonActive() {
    final DateTime now = DateTime.now();
    final int currentHour = now.hour;
    final int currentMinute = now.minute;
    final int currentDay = now.weekday;

    // Cek waktu antara jam 8:00 - 8:30 dan hanya di hari kerja (Senin - Jumat)
    if (currentHour == 8 && currentMinute >= 0 && currentMinute <= 30) {
      if (currentDay >= DateTime.monday && currentDay <= DateTime.friday) {
        return true;
      }
    }

    return false;
  }

  static Color getButtonColor() {
    return isButtonActive() ? ThemeColors.secondaryColor : Colors.grey;
  }

  static void showButtonAccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Text("Akses Ditolak"),
              SizedBox(width: 8),
              Icon(Icons.cancel,
                  color: Colors.redAccent), // Ganti ikon sesuai yang diinginkan
            ],
          ),
          content: Text(
            """Maaf, Anda tidak dapat mengakses tombol pada saat ini. Sekarang bukan waktunya buat absen, silahkan absen pada jadwal yang ditentukan""",
            textAlign: TextAlign.justify,
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 52, 64, 230),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Ok",
                style: TextStyle(
                  color: Colors.white, // Ganti warna sesuai keinginan
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
