import 'package:TURImuka/core.dart';
import 'package:flutter/material.dart';
import 'package:TURImuka/state_util.dart';

Future showCustomDialog({
  required String title,
  required List<Widget> children,
}) async {
  await showDialog<void>(
    context: Get.currentContext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              ...children,
            ],
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 52, 64, 230),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Ok",
              style: TextStyle(
                color: Colors.white, // Ganti warna sesuai keinginan
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
    },
  );
}
