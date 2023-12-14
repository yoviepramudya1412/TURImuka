import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:TURImuka/core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      body: IndexedStack(index: controller.selectedIndex, children: const [
        DashboardView(),
        HistoryView(),
        StatisticView(),
        ProfieView(),
      ]),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: ThemeColors.primaryColor,
        notchMargin: 8.0,
        height: 70.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
                child: NavMenuButton(
              icon: MdiIcons.home,
              label: "Home",
              index: 0,
              selectedIndex: controller.selectedIndex,
              onTap: () => controller.updateView(0),
            )),
            Expanded(
                child: NavMenuButton(
              icon: MdiIcons.calendar,
              label: "History",
              index: 1,
              selectedIndex: controller.selectedIndex,
              onTap: () => controller.updateView(1),
            )),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 21.0,
                ),
                child: const Center(child: Text("Absen")),
              ),
            ), // Widget Spacer agar ada ruang di tengah untuk Floating Action Button
            Expanded(
                child: NavMenuButton(
              icon: MdiIcons.beach,
              label: "Holiday",
              index: 2,
              selectedIndex: controller.selectedIndex,
              onTap: () => controller.updateView(2),
            )),
            Expanded(
              child: NavMenuButton(
                icon: MdiIcons.accountCard,
                label: "Profile",
                index: 3,
                selectedIndex: controller.selectedIndex,
                onTap: () => controller.updateView(3),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: ThemeColors.secondaryColor,
        onPressed: () {
          controller.openCameraWithPermission();
        },
        child: Icon(MdiIcons.faceRecognition),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
