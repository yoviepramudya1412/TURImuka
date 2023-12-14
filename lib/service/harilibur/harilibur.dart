import 'package:dio/dio.dart';

class Harilibur {
  Future<List<Map<String, dynamic>>> getHariLibur() async {
    try {
      var response = await Dio().get(
        "https://dayoffapi.vercel.app/api",
        options: Options(
          headers: {
            "Content-Type": "application/json",
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
