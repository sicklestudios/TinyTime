import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

bool checkIsFilled(String value) {
  if (value.isEmpty) {
    return false;
  }
  return true;
}

void showFloatingFlushBar(
    BuildContext context, String upMessage, String downMessage) {
  Flushbar(
    borderRadius: BorderRadius.circular(8),
    duration: const Duration(seconds: 1),
    backgroundGradient: LinearGradient(
      colors: [Colors.blue, Colors.blueAccent],
      stops: [0.6, 1],
    ),
    boxShadows: const [
      BoxShadow(
        color: Colors.white,
        offset: Offset(3, 3),
        blurRadius: 3,
      ),
    ],
    titleColor: Colors.white,
    messageColor: Colors.white,
    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
    title: upMessage,
    message: downMessage,
  ).show(context);
}
