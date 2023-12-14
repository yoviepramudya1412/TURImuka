import 'package:flutter/material.dart';
import 'package:TURImuka/core.dart';
import '../view/profie_view.dart';

class ProfieController extends State<ProfieView> {
  static late ProfieController instance;
  late ProfieView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
