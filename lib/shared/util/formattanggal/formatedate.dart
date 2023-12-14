import 'package:intl/intl.dart';

class ForDate {
// Fungsi untuk mendapatkan tanggal dan bulan dari string tanggal API
  String getFormattedDay(String dateString) {
    DateTime date = DateFormat('yyyy-MM-dd').parse(dateString);
    String day = DateFormat('dd').format(date);

    return '$day ';
  }

  String getFormattedMonth(String dateString) {
    DateTime date = DateFormat('yyyy-MM-dd').parse(dateString);

    String month = DateFormat('MMM').format(date);
    return '$month ';
  }

  String getFormattedNormal(String dateString) {
    DateTime date = DateFormat('yyyy-MM-dd').parse(dateString);

    String normal = DateFormat('dd-MMM-yyyy').format(date);
    return '$normal ';
  }

  String getFormattedTime2(String dateString) {
    DateTime date = DateTime.parse(dateString);

    // Format jam dan menit tanpa AM/PM
    String formattedTime = DateFormat('HH:mm').format(date);

    return formattedTime;
  }

  String getFormattedTime(String apiTimeString) {
    DateTime apiTime = DateTime.parse(apiTimeString);

    // Menentukan zona waktu setempat

    // Format tanggal dan waktu dengan zona waktu setempat
    String formattedTime = DateFormat('h:mm a').format(apiTime.toLocal());
    return formattedTime;
  }
}
