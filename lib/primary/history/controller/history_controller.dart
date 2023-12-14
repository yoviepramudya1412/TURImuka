import 'package:flutter/material.dart';
import 'package:TURImuka/core.dart';
import 'package:TURImuka/service/history/history.dart';
import '../view/history_view.dart';

class HistoryController extends State<HistoryView> {
  static late HistoryController instance;
  late HistoryView view;
  late Future<List> absensiFuture;
  late Future<List> absensibelumFuture;

  @override
  void initState() {
    instance = this;
    super.initState();
    absensiFuture = getabsensi();
    absensibelumFuture = getabsensibelum();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List absensiperson = [];
  Future<List> getabsensi() async {
    List absensiperson = await History().absensi();
    setState(() {});
    absensiFuture = Future.value(absensiperson);
    return absensiperson;
  }

  List absensipersonbelum = [];
  Future<List> getabsensibelum() async {
    List absensipersonbelum = await History().absensibelum();
    setState(() {});
    absensibelumFuture = Future.value(absensipersonbelum);
    return absensipersonbelum;
  }
}
