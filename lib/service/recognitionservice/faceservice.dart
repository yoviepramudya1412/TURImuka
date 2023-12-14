import 'package:dio/dio.dart';
import 'package:TURImuka/service/auth/authservice.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FaceService {
  static bool? cekwajah;

  static Future<bool> isAlreadyAbsenToday() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isAlreadyAbsen = prefs.getBool('isAlreadyAbsen');
    String? lastAbsenDate = prefs.getString('lastAbsenDate');

    if (isAlreadyAbsen != null && isAlreadyAbsen) {
      // Jika sudah absen, periksa apakah masih dalam hari yang sama
      DateTime now = DateTime.now();
      DateTime lastAbsenDateTime = DateTime.parse(lastAbsenDate!);
      return now.year == lastAbsenDateTime.year &&
          now.month == lastAbsenDateTime.month &&
          now.day == lastAbsenDateTime.day;
    }

    return false;
  }

  Future<void> wajah({required String imagePath}) async {
    try {
      // Membuat FormData
      FormData formData = FormData.fromMap({
        "sampel_1":
            await MultipartFile.fromFile(imagePath, filename: "gambar.jpg"),
      });

      // Mengirim FormData ke layanan wajah
      var response = await Dio().post(
        "https://cghmn015-8000.asse.devtunnels.ms/halo/",
        options: Options(
          headers: {
            "Content-Type": "multipart/form-data",
            "Authorization": "Bearer ${AuthService.token}",
          },
        ),
        data: formData,
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Data: ${response.data}');
      Map<String, dynamic> responseMap = response.data;
      cekwajah = responseMap['voting_results']['verified'] ?? false;

      if (cekwajah == true) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('isAlreadyAbsen', true);
        prefs.setString('lastAbsenDate', DateTime.now().toString());
      }

      print('tampung :${responseMap}');
    } catch (e) {
      // Handle error jika terjadi
      print("Error saat memanggil layanan wajah: $e");
      if (e is DioException && e.response?.statusCode == 504) {
        // Handle khusus error 504 (Gateway Timeout)
        print(
            "Gateway Timeout: Layanan tidak dapat diakses saat ini. Silakan coba lagi.");
      } else {
        // Error jenis lain, lempar kembali exception
        rethrow;
      }
    }
  }
}
