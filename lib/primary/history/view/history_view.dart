import 'package:flutter/material.dart';
import 'package:TURImuka/core.dart';
import 'package:TURImuka/service/auth/authservice.dart';
import 'package:TURImuka/shared/util/formattanggal/formatedate.dart';
import '../controller/history_controller.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  Widget build(context, HistoryController controller) {
    controller.view = this;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  "History",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Text(
              "Sudah Melakukan Absen",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: FutureBuilder(
                  future: controller.absensiFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      List absensiperson = snapshot.data as List;
                      return RefreshIndicator(
                          onRefresh: () async {
                            await controller
                                .getabsensi(); // Panggil kembali fungsi untuk mendapatkan data terbaru
                          },
                          child: ListView.builder(
                            itemCount: absensiperson.length,
                            physics: const ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              var item = absensiperson[index];
                              var dateaja = item["tanggal_absensi"];
                              return Card(
                                color: Colors.greenAccent,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 238, 238, 238),
                                    backgroundImage: NetworkImage(
                                      "https://cghmn015-8000.asse.devtunnels.ms/${AuthService.profil}",
                                    ),
                                  ),
                                  title: Text(item["staff"]),
                                  subtitle: Row(
                                    children: [
                                      Text(ForDate()
                                          .getFormattedNormal(dateaja)),
                                      const SizedBox(
                                        width: 22.0,
                                      ),
                                      Text(ForDate().getFormattedTime(dateaja)),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ));
                    }
                  }),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Belum Absen",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: FutureBuilder(
                  future: controller.absensibelumFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      List absensipersonbelum = snapshot.data as List;
                      return RefreshIndicator(
                          onRefresh: () async {
                            await controller
                                .getabsensibelum(); // Panggil kembali fungsi untuk mendapatkan data terbaru
                          },
                          child: ListView.builder(
                            itemCount: absensipersonbelum.length,
                            physics: const ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              var item = absensipersonbelum[index];
                              var dateaja = item["tanggal_absensi"];
                              return Card(
                                color: Colors.redAccent.withOpacity(0.5),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 238, 238, 238),
                                    backgroundImage: NetworkImage(
                                      "https://cghmn015-8000.asse.devtunnels.ms/${AuthService.profil}",
                                    ),
                                  ),
                                  title: Text(item["staff"]),
                                  subtitle: Row(
                                    children: [
                                      Text(ForDate()
                                          .getFormattedNormal(dateaja)),
                                      const SizedBox(
                                        width: 22.0,
                                      ),
                                      Text(ForDate().getFormattedTime(dateaja)),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ));
                    }
                  }),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  State<HistoryView> createState() => HistoryController();
}
