import 'package:dio/dio.dart';
import 'package:TURImuka/service/auth/authservice.dart';

class History {
  Future<List<Map<String, dynamic>>> absensi() async {
    try {
      var response = await Dio().get(
        "https://cghmn015-8000.asse.devtunnels.ms/absensi/",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${AuthService.token}"
          },
        ),
      );
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return List<Map<String, dynamic>>.from(data);
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }

  Future<List<Map<String, dynamic>>> absensibelum() async {
    try {
      var response = await Dio().get(
        "https://cghmn015-8000.asse.devtunnels.ms/absensibelum/",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${AuthService.token}"
          },
        ),
      );
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return List<Map<String, dynamic>>.from(data);
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}
