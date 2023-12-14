import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:TURImuka/core.dart';
import 'package:TURImuka/service/auth/authservice.dart';
import '../controller/profie_controller.dart';

class ProfieView extends StatefulWidget {
  const ProfieView({Key? key}) : super(key: key);

  Widget build(context, ProfieController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 160.0,
              width: 160.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cghmn015-8000.asse.devtunnels.ms/${AuthService.profil}",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    36.0,
                  ),
                ),
              ),
            ).animate().fadeIn(duration: 2000.ms),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "${AuthService.nama}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(duration: 1000.ms),
            Text(
              "${AuthService.nip}",
              style: TextStyle(
                fontSize: 21.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfieView> createState() => ProfieController();
}
