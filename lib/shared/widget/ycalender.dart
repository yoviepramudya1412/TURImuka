// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Ycalender extends StatefulWidget {
  const Ycalender({Key? key}) : super(key: key);

  @override
  State<Ycalender> createState() => _YcalenderState();
}

class _YcalenderState extends State<Ycalender> {
  late ScrollController _scrollController;
  int todayIndex =
      DateTime.now().difference(DateTime(DateTime.now().year, 1, 1)).inDays;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToToday());
  }

  void _scrollToToday() {
    double itemExtent = 90.8; // Lebar setiap item dalam ListView
    double scrollOffset = todayIndex * itemExtent;
    _scrollController.animateTo(
      scrollOffset,
      duration: const Duration(seconds: 3),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0, // Atur tinggi sesuai kebutuhan Anda
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: 365,
        itemBuilder: (BuildContext context, int index) {
          DateTime currentDate =
              DateTime(DateTime.now().year, 1, 1).add(Duration(days: index));
          String formattedDate = DateFormat('dd').format(currentDate);
          String dayOfWeek = DateFormat('EEE').format(currentDate);
          bool isToday = index == todayIndex;
          return Container(
            width: 75.0, // Lebar kontainer sesuai kebutuhan Anda
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              color: isToday ? Colors.blue : Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(formattedDate,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 8.0),
                Center(
                  child: Text(dayOfWeek,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w800)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
