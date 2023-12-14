import 'package:flutter/material.dart';
import 'package:TURImuka/core.dart';
import 'package:TURImuka/service/auth/authservice.dart';

import 'package:TURImuka/shared/util/dialog/show_info_dialog.dart';
import 'package:TURImuka/shared/util/show_loading/show_loading.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? nip;
  String? password;
  doLogin() async {
    bool isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    showLoading();
    bool isoke = await AuthService().login(nip: nip!, password: password!);
    hideLoading();
    if (!isoke) {
      showInfoDialog("Password atau Nip anda salah");
      return;
    }
    // AuthTimer().start(context);
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainNavigationView()),
    );
  }
}
