// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:TURImuka/core.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double tinggi;
  const ActionButton({
    Key? key,
    required this.tinggi,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: tinggi,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ThemeColors.accentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () => onPressed(),
          child:
              Text(label, style: const TextStyle(color: ThemeColors.textColor)),
        ),
      ),
    );
  }
}
