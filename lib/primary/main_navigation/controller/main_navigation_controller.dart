import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:TURImuka/core.dart';
import 'package:TURImuka/service/recognitionservice/faceservice.dart';
import 'package:TURImuka/shared/util/dialog/show_custom_dialog.dart';
import 'package:TURImuka/shared/util/show_loading/show_loading.dart';
import 'package:TURImuka/shared/util/show_snackbar/show_snackbar.dart';
import '../view/main_navigation_view.dart';

class MainNavigationController extends State<MainNavigationView> {
  static late MainNavigationController instance;
  late MainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;

  void updateView(int index) {
    selectedIndex = index;
    setState(() {});
  }

  Future<void> openCamera() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image != null) {
      // Lakukan sesuatu dengan gambar yang dipilih (image.path)
      print('Path gambar: ${image.path}');

      // Mengirim gambar ke layanan wajah
      showLoading();

      await FaceService().wajah(
          imagePath: image.path); // Menggunakan instance dari FaceService
      hideLoading();

      // Mengecek nilai verified dalam respons
      var verified = FaceService.cekwajah;

      // Menampilkan dialog berdasarkan nilai verified
      showCustomDialog(
        title: verified ?? false ? "Berhasil Absen" : "Gagal Absen",
        children: [
          Text(
            verified ?? false
                ? "Anda telah berhasil melakukan absen"
                : "Absen ditolak. Silakan coba lagi.",
            style: const TextStyle(
              fontSize: 11.0,
            ),
          ),
        ],
      );
    } else {
      // Tidak ada gambar yang dipilih
      print('Tidak ada gambar yang dipilih');
    }
  }

  Future<void> sendImageToFaceService(String imagePath) async {
    try {
      // Mengirim gambar ke layanan wajah
      await FaceService().wajah(imagePath: imagePath);
    } catch (e) {
      print('Error saat mengirim gambar ke layanan wajah: $e');
    }
  }

  Future<void> openCameraWithPermission() async {
    var status = await Permission.camera.request();

    if (status == PermissionStatus.granted) {
      openCamera();
    } else {
      snackbarPrimary(message: "tidak diberikan izin akses");
    }
  }
}
