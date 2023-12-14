import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:TURImuka/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;
  late String greeting = "";

  @override
  void initState() {
    instance = this;
    super.initState();
    greeting = getGreeting();
    updateGreetingEveryHour();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String getGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  void updateGreetingEveryHour() {
    Future.delayed(const Duration(hours: 1)).then((_) {
      setState(() {
        greeting = getGreeting();
      });
      updateGreetingEveryHour();
    });
  }

  List apartGrid = [
    {
      "icon": MdiIcons.clockIn,
      "label": "Check in",
      "angkaL": "08.30",
      "textbantu": "Belum Absen",
    },
    {
      "icon": MdiIcons.clockOut,
      "label": "Check out",
      "angkaL": "15.30",
      "textbantu": "Saatnya Pulang",
    },
    {
      "icon": MdiIcons.foodForkDrink,
      "label": "Istirahat",
      "angkaL": "30 min",
      "textbantu": "Perkiraan Waktu",
    },
    {
      "icon": MdiIcons.calendarCheck,
      "label": "Total kerja",
      "angkaL": "20",
      "textbantu": "Hari Bekerja",
    },
  ];
}
