import 'package:flutter/material.dart';
import 'package:TURImuka/core.dart';
import 'package:TURImuka/service/harilibur/harilibur.dart';
import '../view/statistic_view.dart';

class StatisticController extends State<StatisticView> {
  static late StatisticController instance;
  late StatisticView view;

  @override
  void initState() {
    instance = this;
    getHari();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List harilibur = [];
  getHari() async {
    harilibur = await Harilibur().getHariLibur();

    setState(() {});
  }
}
