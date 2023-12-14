import 'package:dio/dio.dart';

class AuthService {
  static String? token;
  static String? nama;
  static String? profil;
  static String? nip;

  Future<bool> login({
    required nip,
    required password,
  }) async {
    try {
      var response = await Dio().post(
        "https://cghmn015-8000.asse.devtunnels.ms/api/login/",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "nip": nip,
          "password": password,
        },
      );
      Map obj = response.data;
      token = obj["access_token"];
      nama = obj["user"]["nama"];
      profil = obj["user"]["profil"];
      nip = obj["user"]["nip"];

      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
