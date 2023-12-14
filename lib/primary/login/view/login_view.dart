import 'package:flutter/material.dart';
import 'package:TURImuka/core.dart';
import 'package:TURImuka/shared/util/validator/validator.dart';
import 'package:TURImuka/shared/widget/textfield/text_field.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Image.asset(
                  "asset/icons/2.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  fit: BoxFit.contain,
                ).animate().fadeIn(duration: 2000.ms),
                Form(
                  key: controller.formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        QTextField(
                          label: "Nip",
                          validator: Validator.required,
                          suffixIcon: Icons.person_2_outlined,
                          value: null,
                          onChanged: (value) {
                            controller.nip = value;
                          },
                        ),
                        QTextField(
                          label: "Password",
                          obscure: true,
                          validator: Validator.required,
                          suffixIcon: Icons.password,
                          value: null,
                          onChanged: (value) {
                            controller.password = value;
                          },
                        ),
                        ActionButton(
                          label: "Login",
                          tinggi: 50,
                          onPressed: () => controller.doLogin(),
                        )
                      ]),
                ),
              ],
            )),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
