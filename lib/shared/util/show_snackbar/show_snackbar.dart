import 'package:TURImuka/core.dart';
import 'package:flutter/material.dart';

snackbarPrimary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: ThemeColors.primaryColor,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSecondary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: ThemeColors.accentColor,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarDanger({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.redAccent,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSuccess({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.greenAccent,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarInfo({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.yellowAccent,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarWarning({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.yellowAccent,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftPrimary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.primaryColor.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.yellowAccent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: ThemeColors.accentColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftSecondary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.accentColor.withOpacity(0.5),
          border: Border.all(
            width: 1.0,
            color: ThemeColors.accentColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: ThemeColors.accentColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftDanger({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.redAccent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftSuccess({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.greenAccent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftInfo({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellowAccent.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.yellowAccent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.yellowAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftWarning({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.yellow,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconSoftPrimary(
    {required String message,
    int duration = 4,
    IconData data = Icons.task_alt_outlined}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.accentColor.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: ThemeColors.accentColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  data,
                  size: 24.0,
                  color: ThemeColors.accentColor,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: ThemeColors.accentColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconSoftSecondary(
    {required String message,
    int duration = 4,
    IconData data = Icons.person_pin_circle_outlined}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.accentColor.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: ThemeColors.accentColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  data,
                  size: 24.0,
                  color: ThemeColors.accentColor,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: ThemeColors.accentColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconSoftSuccess(
    {required String message,
    int duration = 4,
    IconData data = Icons.check_circle_outline}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.greenAccent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  data,
                  size: 24.0,
                  color: Colors.greenAccent,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconSoftDanger(
    {required String message,
    int duration = 4,
    IconData data = Icons.dangerous_outlined}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.redAccent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  data,
                  size: 24.0,
                  color: Colors.redAccent,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconSoftInfo(
    {required String message,
    int duration = 4,
    IconData data = Icons.info_outline}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellowAccent.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.yellowAccent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  data,
                  size: 24.0,
                  color: Colors.yellowAccent,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.yellowAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconSoftWarning(
    {required String message,
    int duration = 4,
    IconData data = Icons.warning_amber_outlined}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: Colors.yellow,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  data,
                  size: 24.0,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconPrimary(
    {required String message,
    int duration = 4,
    IconData data = Icons.task_alt_outlined}) {
  var snackBar = SnackBar(
    padding: const EdgeInsets.all(10),
    duration: Duration(seconds: duration),
    backgroundColor: ThemeColors.accentColor,
    content: Row(
      children: [
        const SizedBox(
          width: 10.0,
        ),
        Icon(
          data,
          size: 24.0,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconSecondary(
    {required String message,
    int duration = 4,
    IconData data = Icons.person_pin_circle_outlined}) {
  var snackBar = SnackBar(
    padding: const EdgeInsets.all(10),
    duration: Duration(seconds: duration),
    backgroundColor: ThemeColors.accentColor,
    content: Row(
      children: [
        const SizedBox(
          width: 10.0,
        ),
        Icon(
          data,
          size: 24.0,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconDanger(
    {required String message,
    int duration = 4,
    IconData data = Icons.dangerous_outlined}) {
  var snackBar = SnackBar(
    padding: const EdgeInsets.all(10),
    duration: Duration(seconds: duration),
    backgroundColor: Colors.redAccent,
    content: Row(
      children: [
        const SizedBox(
          width: 10.0,
        ),
        Icon(
          data,
          size: 24.0,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconSuccess(
    {required String message,
    int duration = 4,
    IconData data = Icons.check_circle_outline}) {
  var snackBar = SnackBar(
    padding: const EdgeInsets.all(10),
    duration: Duration(seconds: duration),
    backgroundColor: Colors.greenAccent,
    content: Row(
      children: [
        const SizedBox(
          width: 10.0,
        ),
        Icon(
          data,
          size: 24.0,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconInfo(
    {required String message,
    int duration = 4,
    IconData data = Icons.info_outline}) {
  var snackBar = SnackBar(
    padding: const EdgeInsets.all(10),
    duration: Duration(seconds: duration),
    backgroundColor: Colors.yellowAccent,
    content: Row(
      children: [
        const SizedBox(
          width: 10.0,
        ),
        Icon(
          data,
          size: 24.0,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarIconWarning(
    {required String message,
    int duration = 4,
    IconData data = Icons.warning_amber_outlined}) {
  var snackBar = SnackBar(
    padding: const EdgeInsets.all(10),
    duration: Duration(seconds: duration),
    backgroundColor: Colors.yellow,
    content: Row(
      children: [
        Icon(
          data,
          size: 24.0,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}
